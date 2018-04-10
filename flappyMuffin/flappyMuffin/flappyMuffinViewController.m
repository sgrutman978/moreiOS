//
//  flappyMuffinViewController.m
//  flappyMuffin
//
//  Created by Steven Grutman on 2/13/14.
//  Copyright (c) 2014 Steven Grutman. All rights reserved.
//

#import "flappyMuffinViewController.h"
#import <iAd/iAd.h>
#import <GameKit/GameKit.h>

@interface flappyMuffinViewController ()

@end

@implementation flappyMuffinViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadScore];
    [self newGame];
        timer = [NSTimer scheduledTimerWithTimeInterval:.013 target:self selector:@selector(ioio) userInfo:nil repeats:YES];
    timer3 = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(ioio) userInfo:nil repeats:YES];
    yy = 1;
    
    [[GKLocalPlayer localPlayer] authenticateWithCompletionHandler:^(NSError *error) {
        if (error == nil) {
            NSLog(@"Authentication Successful");
        } else {
            NSLog(@"Authentication Failed");
        }
    }];


    
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)addTime{
    if (yy == 0) {
        totalTime++;
    }
}

-(void)ioio{
    if(yy == 0){
        if (muffin.center.x > topBox.center.x && plahb == 0) {
            if(score < -5){
                score = 0;
                scoreL.text = @"0";
            }else{
            score++;
            scoreL.text = [[NSString alloc] initWithFormat: @"%d", score];
            plahb = 1;
            }
        }
if (CGRectIntersectsRect(muffin.frame, topBox.frame) || CGRectIntersectsRect(muffin.frame, bottomBox.frame)){
    [self endGame];
    }
    haha = haha + .18;
    if(muffin.center.y < 460){
        if(muffin.center.y + haha > 90){
    muffin.center = CGPointMake(muffin.center.x, muffin.center.y + haha);
        }
    }else{
         muffin.center = CGPointMake(muffin.center.x, 480);
         [self endGame];
    }
topBox.frame = CGRectMake(topBox.frame.origin.x - 2.5, topBox.frame.origin.y, topBox.frame.size.width, topBox.frame.size.height);
    bottomBox.frame = CGRectMake(bottomBox.frame.origin.x - 2.5, bottomBox.frame.origin.y, bottomBox.frame.size.width, bottomBox.frame.size.height);
    if (topBox.frame.origin.x < -80) {
        twoOne = random()%238 + 40;
        topBox.frame = CGRectMake(400, 68, topBox.frame.size.width, twoOne);
        bottomBox.frame = CGRectMake(400, twoOne+174, bottomBox.frame.size.width, 318 - twoOne);
        plahb = 0;
    }
    }
    if (score > highscore) {
        highscore = score;
    }
    [self saveScore];
    high.text = [[NSString alloc] initWithFormat: @"%d", highscore];
}

-(void)bannerViewDidLoadAd:(ADBannerView *)banner {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    [banner setAlpha:1];
    [UIView commitAnimations];
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:1];
    [banner setAlpha:0];
    [UIView commitAnimations];
}


-(IBAction)tap{
    haha = -4.5;
}

-(void)endGame{
    yy = 1;
    //[timer invalidate];
    pic1 = 0;
    crap = [NSTimer scheduledTimerWithTimeInterval:.09 target:self selector:@selector(explode) userInfo:nil repeats:YES];
    games++;
    if (score > highscore) {
        highscore = score;
    }
    [self saveScore];
     high.text = [[NSString alloc] initWithFormat: @"%d", highscore];
    [self subScore];
}

-(void)explode{
    pic1++;
    if (pic1 == 1) {
        muffin.image = [UIImage imageNamed:@"e1.png"];
    }
    if (pic1 == 2) {
        muffin.image = [UIImage imageNamed:@"e2.png"];
    }
    if (pic1 == 3) {
        muffin.image = [UIImage imageNamed:@"e3.png"];
    }
    if (pic1 == 4) {
        muffin.image = [UIImage imageNamed:@"e4.png"];
    }
    if (pic1 == 5) {
        muffin.image = [UIImage imageNamed:@"e5.png"];
    }
    if (pic1 == 6) {
        muffin.image = [UIImage imageNamed:@"e6.png"];
    }
    if (pic1 == 7) {
        muffin.image = [UIImage imageNamed:@"e7.png"];
    }
    if (pic1 == 8) {
        muffin.image = [UIImage imageNamed:@"e8.png"];
    }
    if (pic1 == 9) {
        muffin.image = [UIImage imageNamed:@"e9.png"];
    }
    if (pic1 == 10) {
        muffin.image = [UIImage imageNamed:@"e10.png"];
    }
    if (pic1 == 11) {
        muffin.image = [UIImage imageNamed:@"e11.png"];
    }
    if (pic1 == 12) {
        muffin.image = [UIImage imageNamed:@"e12.png"];
    }
    if (pic1 == 13) {
        [muffin setHidden:YES];
        
         [crap invalidate];
    }
}

-(void)loadScore{
  highscore = [[[NSUserDefaults standardUserDefaults]objectForKey:@"HIGHSCORE"]integerValue];
    games = [[[NSUserDefaults standardUserDefaults]objectForKey:@"GAMES"]integerValue];
    totalTime = [[[NSUserDefaults standardUserDefaults]objectForKey:@"TOTALTIME"]integerValue];
    NSLog(@"%d", games);
}

-(void)saveScore{
[[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(highscore)]forKey:@"HIGHSCORE"];
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(games)]forKey:@"GAMES"];
[[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(totalTime)]forKey:@"TOTALTIME"];
 high.text = [[NSString alloc] initWithFormat: @"%d", highscore];
}

-(IBAction)showLeader{
    GKLeaderboardViewController *leaderboardController = [[GKLeaderboardViewController alloc] init];
    if (leaderboardController != nil) {
        leaderboardController.leaderboardDelegate = self;
        [self presentModalViewController: leaderboardController animated:YES];
    }
}

-(void)leaderboardViewControllerDidFinish:(GKLeaderboardViewController *)viewController{
    [self dismissModalViewControllerAnimated:YES];
}

-(void)subScore{
    GKScore *scoreReporter1 = [[GKScore alloc] initWithCategory:@"987"];
    scoreReporter1.value = highscore;
    
    [scoreReporter1 reportScoreWithCompletionHandler:^(NSError *error) {
        if (error != nil)
        {
            
            
        }
        else {
            
            
        }
    }];
    GKScore *scoreReporter2 = [[GKScore alloc] initWithCategory:@"654"];
    scoreReporter2.value = games;
    
    [scoreReporter2 reportScoreWithCompletionHandler:^(NSError *error) {
        if (error != nil)
        {
            
            
        }
        else {
            
            
        }
    }];
    GKScore *scoreReporter3 = [[GKScore alloc] initWithCategory:@"321"];
    scoreReporter3.value = totalTime;
    
    [scoreReporter3 reportScoreWithCompletionHandler:^(NSError *error) {
        if (error != nil)
        {
            
            
        }
        else {
            
            
        }
    }];
    }

-(IBAction)newGame{
    score = 0;
    pic1 = 100;
    haha = 0;
    muffin.center = CGPointMake(68, 150);
    [muffin setHidden:NO];
    muffin.image = [UIImage imageNamed:@"muffin.png"];
    bottomBox.center = CGPointMake(-100, bottomBox.center.y);
    topBox.center = CGPointMake(-100, topBox.center.y);
    yy = 0;
    score = -500;
     scoreL.text = @"0";
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
