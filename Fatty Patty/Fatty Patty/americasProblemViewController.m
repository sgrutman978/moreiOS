//
//  americasProblemViewController.m
//  Fatty Patty
//
//  Created by Steven Grutman on 9/20/12.
//  Copyright (c) 2012 Steven Grutman. All rights reserved.
//

#import "americasProblemViewController.h"
#import <iAd/iAd.h>
#import <GameKit/GameKit.h>


@interface americasProblemViewController ()

@end

@implementation americasProblemViewController



-(void)subScore{
    GKScore *scoreReporter = [[GKScore alloc] initWithCategory:@"12345678"];
    scoreReporter.value = score;
    
    [scoreReporter reportScoreWithCompletionHandler:^(NSError *error) {
        if (error != nil)
        {
            
            
        }
        else {
            
            
        }
    }];
    GKScore *scoreReporter1 = [[GKScore alloc] initWithCategory:@"1234567"];
    scoreReporter1.value = patties;
    
    [scoreReporter1 reportScoreWithCompletionHandler:^(NSError *error) {
        if (error != nil)
        {
            
            
        }
        else {
            
            
        }
    }];
    GKScore *scoreReporter2 = [[GKScore alloc] initWithCategory:@"123456"];
    scoreReporter2.value = games;
    
    [scoreReporter2 reportScoreWithCompletionHandler:^(NSError *error) {
        if (error != nil)
        {
            
            
        }
        else {
            
            
        }
    }];
    GKScore *scoreReporter3 = [[GKScore alloc] initWithCategory:@"12345"];
    scoreReporter3.value = pattiesPerGame;
    
    [scoreReporter3 reportScoreWithCompletionHandler:^(NSError *error) {
        if (error != nil)
        {
            
            
        }
        else {
            
            
        }
    }];
    GKScore *scoreReporter4 = [[GKScore alloc] initWithCategory:@"1234"];
    scoreReporter4.value = timeRecord;
    
    [scoreReporter4 reportScoreWithCompletionHandler:^(NSError *error) {
        if (error != nil)
        {
            
            
        }
        else {
            
            
        }
    }];
    GKScore *scoreReporter5 = [[GKScore alloc] initWithCategory:@"123"];
    scoreReporter5.value = totalTime;
    
    [scoreReporter5 reportScoreWithCompletionHandler:^(NSError *error) {
        if (error != nil)
        {
            
            
        }
        else {
            
            
        }
    }];
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

- (IBAction) showAchievements
{
    GKAchievementViewController *achievements = [[GKAchievementViewController alloc] init];
    if (achievements != NULL)
    {
        achievements.achievementDelegate = self;
        [self presentModalViewController: achievements animated: YES];
    }
}
- (void)achievementViewControllerDidFinish:(GKAchievementViewController *)viewController;
{
    [self dismissModalViewControllerAnimated: YES];
}
 
 - (void)viewDidLoad {
 [super viewDidLoad];
     [self loadScore];
     [self menu];
     
 burger.center = CGPointMake(1000, 1000);
      burger1.center = CGPointMake(1000, 1000);
     
     [[GKLocalPlayer localPlayer] authenticateWithCompletionHandler:^(NSError *error) {
         if (error == nil) {
             NSLog(@"Authentication Successful");
         } else {
             NSLog(@"Authentication Failed");
         }
     }];

 }
 


- (IBAction)twitter{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/SGrutmanGames"]];
}

- (IBAction)like{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://facebook.com/grutmanGames"]];
}



 -(IBAction)start {
     player.center = CGPointMake(160, 400);
     enemy.center = CGPointMake(140, 80);
     enemy1.center = CGPointMake(180, 160);
     lives = 1;
     blah = 0;
     
     if (ss >= 1) {
         [ssb setHidden:NO];
     } else {
         [ssb setHidden:YES];
     }
     
     if (bs >= 1) {
         [bsb setHidden:NO];
     } else {
         [bsb setHidden:YES];
     }
     
     if (sc >= 1) {
         [scb setHidden:NO];
     } else {
         [scb setHidden:YES];
     }
     
     if (i >= 1) {
         [ib setHidden:NO];
     } else {
         [ib setHidden:YES];
     }
     
     [blueBackground setHidden:YES];
     [powerUps setHidden:YES];
     [gameView setHidden:NO];
     [randomMain invalidate];
     [speedUp invalidate];
     [speedUp1 invalidate];
     [replaceBurger invalidate];
     [replaceBurger1 invalidate];
     [timer invalidate];
     [self set];
     ppp++;
     score = 0;
     time = 0;
     scoreLabel.text = [NSString stringWithFormat:@"Score: %d", score];
     timeLabel.text = [NSString stringWithFormat:@"Time: %d s", time];
     //if (ppp == 1){
         randomMain = [NSTimer scheduledTimerWithTimeInterval:(0.01) target:self selector:@selector(onTimer2) userInfo:nil repeats:YES];
speedUp = [NSTimer scheduledTimerWithTimeInterval:(15) target:self selector:@selector(speedster) userInfo:nil repeats:YES];
speedUp1 = [NSTimer scheduledTimerWithTimeInterval:(20) target:self selector:@selector(speedster1) userInfo:nil repeats:YES];
replaceBurger = [NSTimer scheduledTimerWithTimeInterval:(2) target:self selector:@selector(replace) userInfo:nil repeats:YES];
replaceBurger1 = [NSTimer scheduledTimerWithTimeInterval:(3) target:self selector:@selector(replace1) userInfo:nil repeats:YES];
timer = [NSTimer scheduledTimerWithTimeInterval:(1) target:self selector:@selector(changeTime) userInfo:nil repeats:YES];
     [bigBox setHidden:NO];
     bigBox.alpha = 0;
     [self set];

 }




-(IBAction)showPower{
    [gameView setHidden:YES];
    [blueBackground setHidden:YES];
    [powerUps setHidden:NO];
}

-(IBAction)menu{
    [powerUps setHidden:YES];
    [gameView setHidden:YES];
    [blueBackground setHidden:NO];
}

-(IBAction)addss{
    if (puPatties < 250) {
        UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Sorry"] message:[NSString stringWithFormat:@"You do not have enough patties to get this power up"] delegate:nil cancelButtonTitle:@"I'm Hungry!" otherButtonTitles:nil];
        [alert1 show];
    }
    if (puPatties >= 250) {
      ss = (int)ss + 1;
        ssl.text = [NSString stringWithFormat:@"%d", ss];
        puPatties = (int)puPatties - 250;
        [self changeLabels];
         [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(ss)]forKey:@"SS"];
   }
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


-(IBAction)addbs{
    if (puPatties < 450) {
        UIAlertView *alert2 = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Sorry"] message:[NSString stringWithFormat:@"You do not have enough patties to get this power up"] delegate:nil cancelButtonTitle:@"I'm Hungry!" otherButtonTitles:nil];
        [alert2 show];
    }
    if (puPatties >= 450) {
        bs = (int)bs + 1;
        bsl.text = [NSString stringWithFormat:@"%d", bs];
        puPatties = (int)puPatties - 450;
         [self changeLabels];
           [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(bs)]forKey:@"BS"];
    }
}

-(IBAction)addsc{
    if (puPatties < 1000) {
        UIAlertView *alert3 = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Sorry"] message:[NSString stringWithFormat:@"You do not have enough patties to get this power up"] delegate:nil cancelButtonTitle:@"I'm Hungry!" otherButtonTitles:nil];
        [alert3 show];
    }
    if (puPatties >= 1000) {
        sc = (int)sc + 1;
        scl.text = [NSString stringWithFormat:@"%d", sc];
        puPatties = (int)puPatties - 1000;
         [self changeLabels];
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(sc)]forKey:@"SC"];
    }
}

-(IBAction)addi{
    if (puPatties < 1000) {
        UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Sorry"] message:[NSString stringWithFormat:@"You do not have enough patties to get this power up"] delegate:nil cancelButtonTitle:@"I'm Hungry!" otherButtonTitles:nil];
        [alert1 show];
    }
    if (puPatties >= 1000) {
        i = (int)i + 1;
        il.text = [NSString stringWithFormat:@"%d", i];
        puPatties = (int)puPatties - 1000;
        [self changeLabels];
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(i)]forKey:@"I"];
    }
}

-(IBAction)addss1{
        [ssb setHidden:YES];
        ss = (int)ss - 1;
        bigBox.backgroundColor = [UIColor yellowColor];
        bigBox.alpha = .600;
        pos2 = CGPointMake(pos.x, pos.y);
        pos3 = CGPointMake(pos1.x, pos1.y);
        pos = CGPointMake(pos4.x, pos4.y);
        pos1 = CGPointMake(pos5.x, pos5.y);
    bsb.center = CGPointMake(bsb.center.x + 100, bsb.center.y);
    scb.center = CGPointMake(scb.center.x + 100, scb.center.y);
      ib.center = CGPointMake(ib.center.x + 100, ib.center.y);
        crap = [NSTimer scheduledTimerWithTimeInterval:15 target:self selector:@selector(slower) userInfo:nil repeats:NO];
         crap3 = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(lighter) userInfo:nil repeats:YES];
}

-(IBAction)addi1{
    [ib setHidden:YES];
    i = (int)i - 1;
    bigBox.backgroundColor = [UIColor orangeColor];
    bigBox.alpha = .600;
    ssb.center = CGPointMake(bsb.center.x + 100, bsb.center.y);
    bsb.center = CGPointMake(bsb.center.x + 100, bsb.center.y);
    scb.center = CGPointMake(scb.center.x + 100, scb.center.y);
    invin = 1;
    crap8 = [NSTimer scheduledTimerWithTimeInterval:30 target:self selector:@selector(invis) userInfo:nil repeats:NO];
    crap7 = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(lighter3) userInfo:nil repeats:YES];
}

-(IBAction)addbs1{
    [bsb setHidden:YES];
    bs = (int)bs - 1;
    bigBox.backgroundColor = [UIColor greenColor];
    bigBox.alpha = .600;
    pos2 = CGPointMake(pos.x, pos.y);
    pos3 = CGPointMake(pos1.x, pos1.y);
    pos = CGPointMake(pos4.x, pos4.y);
    pos1 = CGPointMake(pos5.x, pos5.y);
    ssb.center = CGPointMake(ssb.center.x + 100, ssb.center.y);
    scb.center = CGPointMake(scb.center.x + 100, scb.center.y);
      ib.center = CGPointMake(ib.center.x + 100, ib.center.y);
    crap4 = [NSTimer scheduledTimerWithTimeInterval:30 target:self selector:@selector(slower) userInfo:nil repeats:NO];
    crap5 = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(lighter2) userInfo:nil repeats:YES];
}

-(IBAction)addsc1{
    sc = (int)sc - 1;
    lives = 2;
    bigBox.backgroundColor = [UIColor purpleColor];
     bigBox.alpha = .25;
     [scb setHidden:YES];
    bsb.center = CGPointMake(bsb.center.x + 100, bsb.center.y);
    ssb.center = CGPointMake(ssb.center.x + 100, ssb.center.y);
      ib.center = CGPointMake(ib.center.x + 100, ib.center.y);
}

-(void)lighter{
    if (bigBox.alpha > 0) {
        bigBox.alpha = bigBox.alpha - .04;
    } else {
            [crap3 invalidate];
            bsb.center = CGPointMake(bsb.center.x - 100, bsb.center.y);
            scb.center = CGPointMake(scb.center.x - 100, scb.center.y);
        ib.center = CGPointMake(ib.center.x - 100, ib.center.y);
    }
}

-(void)lighter2{
    if (bigBox.alpha > 0) {
        bigBox.alpha = bigBox.alpha - .02;
    } else {
        [crap5 invalidate];
        ssb.center = CGPointMake(ssb.center.x - 100, ssb.center.y);
        scb.center = CGPointMake(scb.center.x - 100, scb.center.y);
         ib.center = CGPointMake(ib.center.x - 100, ib.center.y);
    }
}

-(void)lighter3{
    if (bigBox.alpha > 0) {
        bigBox.alpha = bigBox.alpha - .02;
    } else {
        [crap7 invalidate];
        ssb.center = CGPointMake(ssb.center.x - 100, ssb.center.y);
        bsb.center = CGPointMake(bsb.center.x - 100, bsb.center.y);
        scb.center = CGPointMake(scb.center.x - 100, scb.center.y);
    }
}

-(void)invis{
    invin = 0;
}

-(void)slower{
    pos = CGPointMake(pos2.x, pos2.y);
    pos1 = CGPointMake(pos3.x, pos3.y);
}

-(void)changeTime{
    time = (int)time + 1;
    timeLabel.text = [NSString stringWithFormat:@"Time: %ds", time];
}

-(void)set{
pos = CGPointMake(-1*((random() % 7)/10.0)+1.0, ((random() % 7)/10.0)+1.0);
pos1 = CGPointMake(((random() % 7)/10.0)+1.0, ((random() % 7)/10.0)+1.0);
    pos4 = CGPointMake(1, 1);
     pos5 = CGPointMake(1, 1);
}

 -(void)replace {
 burger.alpha = 0;
 burger.center = CGPointMake(random() % 320, (random() % 430) + 50);
 burger.alpha = 1;
 }
 
 -(void)replace1 {
 burger1.alpha = 0;
 burger1.center = CGPointMake(random() % 320, (random() % 430) + 50);
 burger1.alpha = 1;
 }
 
 -(void)speedster {
 if (pos.x < 10 && pos.y < 10) {
    pos = CGPointMake(pos.x*1.05, pos.y*1.05);
 }
 }
 
 -(void)speedster1 {
 if (pos1.x < 12 && pos1.y < 12) {
         pos1 = CGPointMake(pos1.x*1.04, pos1.y*1.04);
 }
 }
 
 -(void)checkEat {
 if (CGRectIntersectsRect(player.frame, burger.frame)) {
 burger.center = CGPointMake(1000, burger.center.y);
 score  = (int)score + 1;
scoreLabel.text = [NSString stringWithFormat:@"Score: %d", score];
 }
 }
 
 -(void)checkEat1 {
 if (CGRectIntersectsRect(player.frame, burger1.frame)) {
 burger1.center = CGPointMake(1000, burger1.center.y);
 score  = (int)score + 1;
 scoreLabel.text = [NSString stringWithFormat:@"Score: %d", score];
 }
 }
 
 -(void)onTimer2 {
 [self checkCollision];
 [self checkEat];
 [self checkEat1];
 enemy.center = CGPointMake(enemy.center.x+pos.x,enemy.center.y+pos.y);
 enemy1.center = CGPointMake(enemy1.center.x+pos1.x,enemy1.center.y+pos1.y);
 if (enemy.center.x > 320 || enemy.center.x < 0){
 pos.x = -pos.x;
     pos4.x = -pos4.x;
 }
 if (enemy.center.y > 520 || enemy.center.y < 50){
 pos.y = -pos.y;
     pos4.y = -pos4.y;
 }
 if (enemy1.center.x > 320 || enemy1.center.x < 0){
 pos1.x = -pos1.x;
     pos5.x = -pos5.x;
 }
 if (enemy1.center.y > 520 || enemy1.center.y < 50){
 pos1.y = -pos1.y;
     pos5.y = -pos5.y;
 }
 }



-(void)loadScore{
    patties = [[[NSUserDefaults standardUserDefaults]objectForKey:@"PATTIES"]integerValue];
     games = [[[NSUserDefaults standardUserDefaults]objectForKey:@"GAMES"]integerValue];
    pattiesPerGame = [[[NSUserDefaults standardUserDefaults]objectForKey:@"PATTIESPERGAME"]integerValue];
    timeRecord = [[[NSUserDefaults standardUserDefaults]objectForKey:@"TIMERECORD"]integerValue];
     totalTime = [[[NSUserDefaults standardUserDefaults]objectForKey:@"TOTALTIME"]integerValue];
     puPatties = [[[NSUserDefaults standardUserDefaults]objectForKey:@"PUPATTIES"]integerValue];
     ss = [[[NSUserDefaults standardUserDefaults]objectForKey:@"SS"]integerValue];
     bs = [[[NSUserDefaults standardUserDefaults]objectForKey:@"BS"]integerValue];
     sc = [[[NSUserDefaults standardUserDefaults]objectForKey:@"I"]integerValue];
         i = [[[NSUserDefaults standardUserDefaults]objectForKey:@"SC"]integerValue];
    [self changeLabels];
    pattiesLabel.text = [NSString stringWithFormat:@"%d", puPatties];
}

-(void)saveScore{
        [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(patties)]forKey:@"PATTIES"];
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(games)]forKey:@"GAMES"];
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(pattiesPerGame)]forKey:@"PATTIESPERGAME"];
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(timeRecord)]forKey:@"TIMERECORD"];
     [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(totalTime)]forKey:@"TOTALTIME"];
    puPatties = (int)puPatties + (int)score;
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(puPatties)]forKey:@"PUPATTIES"];
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(ss)]forKey:@"SS"];
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(bs)]forKey:@"BS"];
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(sc)]forKey:@"SC"];
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(i)]forKey:@"I"];
        pattiesLabel.text = [NSString stringWithFormat:@"%d", puPatties];
    }



-(void)checkCollision {
    if (lives == 1)
    {
        if(CGRectIntersectsRect(player.frame,enemy.frame) || CGRectIntersectsRect(player.frame,enemy1.frame))
    {
        if (invin != 1) {
            
        [blueBackground setHidden:NO];
        [powerUps setHidden:YES];
        [gameView setHidden:YES];
        games = (int)games + 1;
        patties = (int)patties + (int)score;
        pattiesPerGame = (int)patties/(int)games;
        totalTime = (int)totalTime + (int)time;
        puPatties == (int)puPatties + (int)score;
        
        if (time > timeRecord) {
            timeRecord = time;
        }
        [self saveScore];
        [randomMain invalidate];
        [speedUp invalidate];
        [speedUp1 invalidate];
        [replaceBurger invalidate];
        [replaceBurger1 invalidate];
        [timer invalidate];
        [blueBackground setHidden:NO];
        [self subScore];
        pos = CGPointMake(0.0,0.0);
        pos1 = CGPointMake(0.0,0.0);
        player.center = CGPointMake(160, 400);
        enemy.center = CGPointMake(140, 80);
        enemy1.center = CGPointMake(180, 160);
        [self changeLabels];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Time: %d ... Score: %d", time, score] message:[NSString stringWithFormat:@"I know your still hungry so TRY AGAIN !"] delegate:nil cancelButtonTitle:@"I'm Hungry!" otherButtonTitles:nil];
        [alert show];
    }
    }
    }
if(lives == 2){
if(CGRectIntersectsRect(player.frame,enemy.frame) || CGRectIntersectsRect(player.frame,enemy1.frame)){
    crap6 = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(blah) userInfo:nil repeats:NO];
    
}}
}

-(void)changeLabels{
    ssl.text = [NSString stringWithFormat:@"%d", ss];
    bsl.text = [NSString stringWithFormat:@"%d", bs];
    scl.text = [NSString stringWithFormat:@"%d", sc];
      il.text = [NSString stringWithFormat:@"%d", i];
    pul.text = [NSString stringWithFormat:@"You have %d patties to spend !", puPatties];
    
}

-(void)blah{
    if (blah == 0){
    lives = 1;
    bigBox.alpha = 0;
    bsb.center = CGPointMake(bsb.center.x - 100, bsb.center.y);
    ssb.center = CGPointMake(ssb.center.x - 100, ssb.center.y);
    }
    blah = 1;
}

- (void)touchesMoved: (NSSet *)touches withEvent:(UIEvent *)event {
	if (player.center.y > 50){
    player.center = CGPointMake(player.center.x+pos.x,player.center.y+pos.y);
    UITouch *myTouch = [[event allTouches] anyObject];
	player.center = [myTouch locationInView:self.view];
    } else {
         player.center = CGPointMake(player.center.x, 55);
    }
}

 - (void)didReceiveMemoryWarning {
 // Releases the view if it doesn't have a superview.
 [super didReceiveMemoryWarning];
 // Release any cached data, images, etc that aren't in use.
 }
 
 - (void)viewDidUnload {
 // Release any retained subviews of the main view.
 // e.g. self.myOutlet = nil;
 }
 
 @end
 

/*
 -(void)saveScore{
 [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(patties)]forKey:@"PATTIES"];
 }

 -(void)loadScore{
 patties = [[[NSUserDefaults standardUserDefaults]objectForKey:@"PATTIES"]integerValue];
 }
 
 -(void)subScore{
 GKScore *scoreReporter = [[GKScore alloc] initWithCategory:@"12345678"];
 scoreReporter.value = score;
 
 [scoreReporter reportScoreWithCompletionHandler:^(NSError *error) {
 if (error != nil)
 {
 
 
 }
 else {
 
 
 }
 }];

 [[GKLocalPlayer localPlayer] authenticateWithCompletionHandler:^(NSError *error) {
 if (error == nil) {
 NSLog(@"Authentication Successful");
 } else {
 NSLog(@"Authentication Failed");
 }
 }];
 
 */

