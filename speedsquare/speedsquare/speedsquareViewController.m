//
//  speedsquareViewController.m
//  speedsquare
//
//  Created by Steven Grutman on 10/1/12.
//  Copyright (c) 2012 Steven Grutman. All rights reserved.
//

#import "speedsquareViewController.h"

@interface speedsquareViewController ()

@end

@implementation speedsquareViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadScore];
    startButtons = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(startButtons) userInfo:nil repeats:YES];
    [menuView setHidden:NO];
    [gameView setHidden:YES];
    [timeView setHidden:YES];
    bigInt = -1;
    smallInt = -1;
    trickster = [NSArray arrayWithObjects:square1, square2, square3, square4, square5, square6, square7, square8, square9, square10, square11, square12, square13, square14, square15, square16, square17, square18, square19, square20, square21, square22, square23, square24, nil];
    NSObject *tempOb;
    [[GKLocalPlayer localPlayer] authenticateWithCompletionHandler:^(NSError *error) {
        if (error == nil) {
            NSLog(@"Authentication Successful");
        } else {
            NSLog(@"Authentication Failed");
        }
    }]; // Do any additional setup after loading the view, typically from a nib.
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

-(void)changeColor{
    tempInt = random() % max;
    if (tempInt == 0) {
        tempColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
    }
    if (tempInt == 1) {
        tempColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1];
    }
    if (tempInt == 2) {
        tempColor = [UIColor colorWithRed:0 green:1 blue:0 alpha:1];
    }
    if (tempInt == 3) {
        tempColor = [UIColor colorWithRed:0.8 green:0 blue:1 alpha:1];
    }
    if (tempInt == 4) {
        tempColor = [UIColor colorWithRed:1 green:1 blue:0 alpha:1];
    }
    if (tempInt == 5) {
        tempColor = [UIColor colorWithRed:0 green:1 blue:1 alpha:1];
    }
    if (tempInt == 6) {
        tempColor = [UIColor colorWithRed:1 green:0 blue:0.75 alpha:1];
    }
    if (tempInt == 7) {
        tempColor = [UIColor colorWithRed:0.08 green:0.36 blue:0 alpha:1];
    }
    if (tempInt == 8) {
        tempColor = [UIColor colorWithRed:0.5 green:0.5 blue:0 alpha:1];
    }
    if (tempInt == 9) {
        tempColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
    }
    if (tempInt == 10) {
        tempColor = [UIColor colorWithRed:0.44 green:0 blue:0.66 alpha:1];
    }
    if (tempInt == 11) {
        tempColor = [UIColor colorWithRed:1 green:0.5 blue:0 alpha:1];
    }
    if (tempInt == 12) {
        tempColor = [UIColor colorWithRed:0.4 green:0.2 blue:0 alpha:1];
    }
}

-(IBAction)practice{
    [startSquareMoves invalidate];
    [whichRect0 invalidate];
    [timer invalidate];
    [timer1 invalidate];
    max = 12;
    [self changeColor];
    randomColor25 = tempInt;
        firstBigRect.backgroundColor = tempColor;
    [self changeColor];
    randomColor26 = tempInt;
    secondBigRect.backgroundColor = tempColor;
    [self changeColor];
    randomColor27 = tempInt;
           thirdBigRect.backgroundColor = tempColor;
    [self changeColor];
    randomColor28 = tempInt;
           fourthBigRect.backgroundColor = tempColor;

    [menuView setHidden:YES];
    [gameView setHidden:NO];
    [timeView setHidden:NO];
    whichRect = 0;
    score = 0;
    time = 90;
    timeLabel.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
    scoreLabel.text = [NSString stringWithFormat:@"Score: %d", highscore];
    //scoreLabel.text = [NSString stringWithFormat:@"Score: %d", score];
    timeLabel.text = [NSString stringWithFormat:@"%d", time];
    startSquareMoves = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(moveSquares) userInfo:nil repeats:YES];
    whichRect0 = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(whichFRect) userInfo:nil repeats:YES];
    timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(timer) userInfo:nil repeats:YES];
    timer1 = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timer1) userInfo:nil repeats:YES];
  
}



- (IBAction)twitter{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/SGrutmanGames"]];
}

- (IBAction)like{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://facebook.com/grutmanGames"]];
}



-(void)startButtons{
    max = 11;
    [self changeColor];
    randomColor30 = tempInt;
            highscores.backgroundColor = tempColor;
    [self changeColor];
    randomColor29 = tempInt;
            play.backgroundColor = tempColor;
    

}

-(void)timer1{
    time = (int)time - 1;
    timeLabel.text = [NSString stringWithFormat:@"%d", time];
    if (time < 10) {
        timeLabel.textColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
    }
    if (time > 10) {
        timeLabel.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
    }
    if (time == 0) {
    [menuView setHidden:NO];
    [gameView setHidden:YES];
    [timeView setHidden:YES];
        [startSquareMoves invalidate];
        [whichRect0 invalidate];
        [timer invalidate];
        [timer1 invalidate];
        if (score > highscore) {
            highscore = score;
            [self saveScore];
        }
        totalScore = (int)totalScore + score;
        totalGames = (int)totalGames + 1;
        [self saveScore1];
        [self subScore];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Score: %d", score] message:[NSString stringWithFormat:@"Great Job !"] delegate:nil cancelButtonTitle:@"SO MANY SQUARES !" otherButtonTitles:nil];
        [alert show];
    }
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

 -(void)loadScore{
 highscore = [[[NSUserDefaults standardUserDefaults]objectForKey:@"HIGHSCORE"]integerValue];
 totalScore = [[[NSUserDefaults standardUserDefaults]objectForKey:@"TOTALSCORE"]integerValue];
     totalGames = [[[NSUserDefaults standardUserDefaults]objectForKey:@"TOTALGAMES"]integerValue];

 }
 
 -(void)saveScore{
 [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(highscore)]forKey:@"HIGHSCORE"];
 }

-(void)saveScore1{
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(totalScore)]forKey:@"TOTALSCORE"];
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(totalGames)]forKey:@"TOTALGAMES"];
}
 
 -(void)subScore{
     
 GKScore *scoreReporter = [[GKScore alloc] initWithCategory:@"com.swimming978.speedsquarehighscore"];
 scoreReporter.value = highscore;
 
 [scoreReporter reportScoreWithCompletionHandler:^(NSError *error) {
 if (error != nil)
 {
 
 
 }
 else {
 
 
 }
 }];
     
     GKScore *scoreReporter1 = [[GKScore alloc] initWithCategory:@"1212121212"];
     scoreReporter1.value = totalScore;
     
     [scoreReporter1 reportScoreWithCompletionHandler:^(NSError *error) {
         if (error != nil)
         {
             
             
         }
         else {
             
             
         }
     }];
     
     GKScore *scoreReporter2 = [[GKScore alloc] initWithCategory:@"131313"];
     scoreReporter2.value = totalGames;
     
     [scoreReporter2 reportScoreWithCompletionHandler:^(NSError *error) {
         if (error != nil)
         {
             
             
         }
         else {
             
             
         }
     }];
     
 }
 

-(void)timer{
    [glowBox setHidden:YES];
    if (whichRect == 0) {
        glowBox.center = CGPointMake(glowBox.center.x, 1000);
    }
    if (whichRect == 1) {
        glowBox.center = CGPointMake(glowBox.center.x, 69);
    }
    if (whichRect == 2) {
        glowBox.center = CGPointMake(glowBox.center.x, 173);
    }
    if (whichRect == 3) {
        glowBox.center = CGPointMake(glowBox.center.x, 278);
    }
    if (whichRect == 4) {
        glowBox.center = CGPointMake(glowBox.center.x, 383);
    }
    [glowBox setHidden:NO];
  // if (square1.center.x == 255) {
        scoreLabel.text = [NSString stringWithFormat:@"Score: %d", score];
        
  //  }
}

-(void)whichFRect{
    if (whichRect == 0) {
        glowBox.center = CGPointMake(glowBox.center.x, 1000);
    }
}

-(IBAction)firstBigRectPress{
   whichRect = 1;
    bigInt = randomColor25;
    glowBox.center = CGPointMake(glowBox.center.x, 69);
    
    
}

-(IBAction)secondBigRectPress{
    bigInt = randomColor26;
    whichRect = 2;
    glowBox.center = CGPointMake(glowBox.center.x, 173);
    
}

-(IBAction)thirdBigRectPress{
    bigInt = randomColor27;
    whichRect = 3;
    glowBox.center = CGPointMake(glowBox.center.x, 278);
   
}

-(IBAction)fourthBigRectPress{
    bigInt = randomColor28;
    whichRect = 4;
    glowBox.center = CGPointMake(glowBox.center.x, 383);
   
}



-(void)moveSquares{
//    for(int ooo = 0; ooo < 24; ooo++){
//        tempOb = [trickster objectAtIndex:ooo];
//        square1.center = CGPointMake(square1.center.x -1, square1.center.y);
//        if (square1.center.x < -25) {
//            square1.center = CGPointMake(345, square1.center.y);
//            UIImage *buttonImage1 = [UIImage imageNamed:@""];
//            [square1 setImage:buttonImage1 forState:UIControlStateNormal];
//            
//            max = 12;
//            [self changeColor];
////          (randomColor)  = tempInt;
//            square1.backgroundColor = tempColor;
//            
//        }
//    }
    //tempOb, tempNum, arrays solution WITH 2 DIFFERENT METHODS FOR DIFFERNT GROUPING OF DIRECTION MOVEMENT
   
    
    square1.center = CGPointMake(square1.center.x -1, square1.center.y);
    if (square1.center.x < -25) {
        square1.center = CGPointMake(345, square1.center.y);
        UIImage *buttonImage25 = [UIImage imageNamed:@""];
        [square1 setImage:buttonImage25 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor1 = tempInt;
        square1.backgroundColor = tempColor;
        
    }
    square2.center = CGPointMake(square2.center.x -1, square2.center.y);
    if (square2.center.x < -25) {
        square2.center = CGPointMake(345, square2.center.y);
        UIImage *buttonImage25 = [UIImage imageNamed:@""];
        [square2 setImage:buttonImage25 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor2 = tempInt;
            square2.backgroundColor = tempColor;
        
    }
    square3.center = CGPointMake(square3.center.x -1, square3.center.y);
    if (square3.center.x < -25) {
        square3.center = CGPointMake(345, square3.center.y);
        UIImage *buttonImage26 = [UIImage imageNamed:@""];
        [square3 setImage:buttonImage26 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor3 = tempInt;
        square3.backgroundColor = tempColor;
        
    }
    square4.center = CGPointMake(square4.center.x -1, square4.center.y);
    if (square4.center.x < -25) {
        square4.center = CGPointMake(345, square4.center.y);
        UIImage *buttonImage27 = [UIImage imageNamed:@""];
        [square4 setImage:buttonImage27 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor4 = tempInt;
        square4.backgroundColor = tempColor;
        
    }
    square5.center = CGPointMake(square5.center.x -1, square5.center.y);
    if (square5.center.x < -25) {
        square5.center = CGPointMake(345, square5.center.y);
        UIImage *buttonImage28 = [UIImage imageNamed:@""];
        [square5 setImage:buttonImage28 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor5 = tempInt;
       square5.backgroundColor = tempColor;
        
    }
    square6.center = CGPointMake(square6.center.x -1, square6.center.y);
    if (square6.center.x < -25) {
        square6.center = CGPointMake(345, square6.center.y);
        UIImage *buttonImage29 = [UIImage imageNamed:@""];
        [square6 setImage:buttonImage29 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor6 = tempInt;
        square6.backgroundColor = tempColor;
        
    }
    square7.center = CGPointMake(square7.center.x +1, square7.center.y);
    if (square7.center.x > 345) {
        square7.center = CGPointMake(-25, square7.center.y);
        UIImage *buttonImage30 = [UIImage imageNamed:@""];
        [square7 setImage:buttonImage30 forState:UIControlStateNormal];
       
        max = 12;
        [self changeColor];
        randomColor7 = tempInt;
        square7.backgroundColor = tempColor;
        
    }
    square8.center = CGPointMake(square8.center.x +1, square8.center.y);
    if (square8.center.x > 345) {
        square8.center = CGPointMake(-25, square8.center.y);
        UIImage *buttonImage31 = [UIImage imageNamed:@""];
        [square8 setImage:buttonImage31 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor8 = tempInt;
        square8.backgroundColor = tempColor;
        
    }
    square9.center = CGPointMake(square9.center.x +1, square9.center.y);
    if (square9.center.x > 345) {
        square9.center = CGPointMake(-25, square9.center.y);
        UIImage *buttonImage32 = [UIImage imageNamed:@""];
        [square9 setImage:buttonImage32 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor9 = tempInt;
        square9.backgroundColor = tempColor;
        
    }
    square10.center = CGPointMake(square10.center.x +1, square10.center.y);
    if (square10.center.x > 345) {
        square10.center = CGPointMake(-25, square10.center.y);
        UIImage *buttonImage33 = [UIImage imageNamed:@""];
        [square10 setImage:buttonImage33 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor10 = tempInt;
        square10.backgroundColor = tempColor;
        
    }
    square11.center = CGPointMake(square11.center.x +1, square11.center.y);
    if (square11.center.x > 345) {
        square11.center = CGPointMake(-25, square11.center.y);
        UIImage *buttonImage34 = [UIImage imageNamed:@""];
        [square11 setImage:buttonImage34 forState:UIControlStateNormal];
     
        max = 12;
        [self changeColor];
        randomColor11 = tempInt;
        square11.backgroundColor = tempColor;
    
    }
    square12.center = CGPointMake(square12.center.x +1, square12.center.y);
    if (square12.center.x > 345) {
        square12.center = CGPointMake(-25, square12.center.y);
        UIImage *buttonImage35 = [UIImage imageNamed:@""];
        [square12 setImage:buttonImage35 forState:UIControlStateNormal];
       
        max = 12;
        [self changeColor];
        randomColor12 = tempInt;
        square12.backgroundColor = tempColor;
        
    }
    square13.center = CGPointMake(square13.center.x -1, square13.center.y);
    if (square13.center.x < -25) {
        square13.center = CGPointMake(345, square13.center.y);
        UIImage *buttonImage36 = [UIImage imageNamed:@""];
        [square13 setImage:buttonImage36 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor13 = tempInt;
        square13.backgroundColor = tempColor;
    }
    square14.center = CGPointMake(square14.center.x -1, square14.center.y);
    if (square14.center.x < -25) {
        square14.center = CGPointMake(345, square14.center.y);
        UIImage *buttonImage37 = [UIImage imageNamed:@""];
        [square14 setImage:buttonImage37 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor14 = tempInt;
        square14.backgroundColor = tempColor;
        
    }
    square15.center = CGPointMake(square15.center.x -1, square15.center.y);
    if (square15.center.x < -25) {
        square15.center = CGPointMake(345, square15.center.y);
        UIImage *buttonImage38 = [UIImage imageNamed:@""];
        [square15 setImage:buttonImage38 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor15 = tempInt;
        square15.backgroundColor = tempColor;
        
    }
    square16.center = CGPointMake(square16.center.x -1, square16.center.y);
    if (square16.center.x < -25) {
        square16.center = CGPointMake(345, square16.center.y);
        UIImage *buttonImage39 = [UIImage imageNamed:@""];
        [square16 setImage:buttonImage39 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor16 = tempInt;
            square16.backgroundColor = tempColor;
        
    }
    square17.center = CGPointMake(square17.center.x -1, square17.center.y);
    if (square17.center.x < -25) {
        square17.center = CGPointMake(345, square17.center.y);
        UIImage *buttonImage40 = [UIImage imageNamed:@""];
        [square17 setImage:buttonImage40 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor17 = tempInt;
        square17.backgroundColor = tempColor;
        
    }
    square18.center = CGPointMake(square18.center.x -1, square18.center.y);
    if (square18.center.x < -25) {
        square18.center = CGPointMake(345, square18.center.y);
        UIImage *buttonImage41 = [UIImage imageNamed:@""];
        [square18 setImage:buttonImage41 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor18 = tempInt;
        square18.backgroundColor = tempColor;
        
    }
    square19.center = CGPointMake(square19.center.x +1, square19.center.y);
    if (square19.center.x > 345) {
        square19.center = CGPointMake(-25, square19.center.y);
        UIImage *buttonImage42 = [UIImage imageNamed:@""];
        [square19 setImage:buttonImage42 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor19 = tempInt;
        square19.backgroundColor = tempColor;
        
    }
    square20.center = CGPointMake(square20.center.x +1, square20.center.y);
    if (square20.center.x > 345) {
        square20.center = CGPointMake(-25, square20.center.y);
        UIImage *buttonImage43 = [UIImage imageNamed:@""];
        [square20 setImage:buttonImage43 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor20 = tempInt;
        square20.backgroundColor = tempColor;
    
    }
    square21.center = CGPointMake(square21.center.x +1, square21.center.y);
    if (square21.center.x > 345) {
        square21.center = CGPointMake(-25, square21.center.y);
        UIImage *buttonImage44 = [UIImage imageNamed:@""];
        [square21 setImage:buttonImage44 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor21 = tempInt;
        square21.backgroundColor = tempColor;
        
    }
    square22.center = CGPointMake(square22.center.x +1, square22.center.y);
    if (square22.center.x > 345) {
        square22.center = CGPointMake(-25, square22.center.y);
        UIImage *buttonImage45 = [UIImage imageNamed:@""];
        [square22 setImage:buttonImage45 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor22 = tempInt;
            square22.backgroundColor = tempColor;
        
    }
    square23.center = CGPointMake(square23.center.x +1, square23.center.y);
    if (square23.center.x > 345) {
        square23.center = CGPointMake(-25, square23.center.y);
        UIImage *buttonImage46 = [UIImage imageNamed:@""];
        [square23 setImage:buttonImage46 forState:UIControlStateNormal];
       
        max = 12;
        [self changeColor];
        randomColor23 = tempInt;
            square23.backgroundColor = tempColor;
        
    }
    square24.center = CGPointMake(square24.center.x +1, square24.center.y);
    if (square24.center.x > 345) {
        square24.center = CGPointMake(-25, square24.center.y);
        UIImage *buttonImage47 = [UIImage imageNamed:@""];
        [square24 setImage:buttonImage47 forState:UIControlStateNormal];
       
        max = 12;
        [self changeColor];
        randomColor24 = tempInt;
        square24.backgroundColor = tempColor;
        
    }
}


-(void)whichOne{
    if (whichRect == 1) {
        max = 12;
        [self changeColor];
        randomColor25 = tempInt;
        firstBigRect.backgroundColor = tempColor;
    }
    if (whichRect == 2) {
        max = 12;
        [self changeColor];
        randomColor26 = tempInt;
        secondBigRect.backgroundColor = tempColor;
    }
    if (whichRect == 3) {
        max = 12;
        [self changeColor];
        randomColor27 = tempInt;
        thirdBigRect.backgroundColor = tempColor;
    }
    
    if (whichRect == 4) {
        max = 12;
        [self changeColor];
        randomColor28 = tempInt;
        fourthBigRect.backgroundColor = tempColor;
    }
    
    whichRect = 0;
    bigInt = -1;
    smallInt = -1;
    [self addScore];
    
}

-(BOOL)matching{
    if (bigInt == smallInt) {
        if(smallInt != -1){
            if(bigInt != -1){
                 [self whichOne];
                return true;
            }}
    }
    [self whichOne];
    return false;
}

-(IBAction)box1press{
    smallInt = randomColor1;
    if ([self matching]) {
        square1.backgroundColor = [UIColor whiteColor];
        UIImage *buttonImage = [UIImage imageNamed:@"checkMark.png"];
        [square1 setImage:buttonImage forState:UIControlStateNormal];
    }
}


-(IBAction)box2press{
    smallInt = randomColor2;
    if ([self matching]) {
                square2.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage2 = [UIImage imageNamed:@"checkMark.png"];
                [square2 setImage:buttonImage2 forState:UIControlStateNormal];
    }
}

-(IBAction)box3press{
    smallInt = randomColor3;
   if ([self matching]) {
                square3.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage3 = [UIImage imageNamed:@"checkMark.png"];
                [square3 setImage:buttonImage3 forState:UIControlStateNormal];
   }
}

-(IBAction)box4press{
    smallInt = randomColor4;
    if ([self matching]) {
                square4.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage4 = [UIImage imageNamed:@"checkMark.png"];
                [square4 setImage:buttonImage4 forState:UIControlStateNormal];
    }
}

-(IBAction)box5press{
    smallInt = randomColor5;
   if ([self matching]) {
                square5.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage5 = [UIImage imageNamed:@"checkMark.png"];
                [square5 setImage:buttonImage5 forState:UIControlStateNormal];
    }
}

-(IBAction)box6press{
    smallInt = randomColor6;
   if ([self matching]) {
                square6.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage6 = [UIImage imageNamed:@"checkMark.png"];
                [square6 setImage:buttonImage6 forState:UIControlStateNormal];
    }
}

-(IBAction)box7press{
    smallInt = randomColor7;
   if ([self matching]) {
                square7.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage7 = [UIImage imageNamed:@"checkMark.png"];
                [square7 setImage:buttonImage7 forState:UIControlStateNormal];
   }
}

-(IBAction)box8press{
    smallInt = randomColor8;
    if ([self matching]) {
                square8.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage8 = [UIImage imageNamed:@"checkMark.png"];
                [square8 setImage:buttonImage8 forState:UIControlStateNormal];
            }
}

-(IBAction)box9press{
    smallInt = randomColor9;
    if ([self matching]) {
                square9.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage9 = [UIImage imageNamed:@"checkMark.png"];
                [square9 setImage:buttonImage9 forState:UIControlStateNormal];
    }
}

-(IBAction)box10press{
    smallInt = randomColor10;
    if ([self matching]) {
                square10.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage10 = [UIImage imageNamed:@"checkMark.png"];
                [square10 setImage:buttonImage10 forState:UIControlStateNormal];
            }
}

-(IBAction)box11press{
    smallInt = randomColor11;
   if ([self matching]) {
                square11.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage11 = [UIImage imageNamed:@"checkMark.png"];
                [square11 setImage:buttonImage11 forState:UIControlStateNormal];
            }
}

-(IBAction)box12press{
    smallInt = randomColor12;
   if ([self matching]) {
                square12.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage12 = [UIImage imageNamed:@"checkMark.png"];
                [square12 setImage:buttonImage12 forState:UIControlStateNormal];
            }
}

-(IBAction)box13press{
    smallInt = randomColor13;
    if ([self matching]) {
                square13.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage13 = [UIImage imageNamed:@"checkMark.png"];
                [square13 setImage:buttonImage13 forState:UIControlStateNormal];
    }
}

-(IBAction)box14press{
    smallInt = randomColor14;
    if ([self matching]) {
                square14.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage14 = [UIImage imageNamed:@"checkMark.png"];
                [square14 setImage:buttonImage14 forState:UIControlStateNormal];
            }
}

-(IBAction)box15press{
    smallInt = randomColor15;
   if ([self matching]) {
                square15.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage15 = [UIImage imageNamed:@"checkMark.png"];
                [square15 setImage:buttonImage15 forState:UIControlStateNormal];
    }
}

-(IBAction)box16press{
    smallInt = randomColor16;
   if ([self matching]) {
                square16.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage16 = [UIImage imageNamed:@"checkMark.png"];
                [square16 setImage:buttonImage16 forState:UIControlStateNormal];
    }
}

-(IBAction)box17press{
    smallInt = randomColor17;
   if ([self matching]) {
                square17.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage17 = [UIImage imageNamed:@"checkMark.png"];
                [square17 setImage:buttonImage17 forState:UIControlStateNormal];
   }
}

-(IBAction)box18press{
    smallInt = randomColor18;
    if ([self matching]) {
                square18.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage18 = [UIImage imageNamed:@"checkMark.png"];
                [square18 setImage:buttonImage18 forState:UIControlStateNormal];
            }
}

-(IBAction)box19press{
    smallInt = randomColor19;
    if ([self matching]) {
                square19.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage19 = [UIImage imageNamed:@"checkMark.png"];
                [square19 setImage:buttonImage19 forState:UIControlStateNormal];
    }
}

-(IBAction)box20press{
    smallInt = randomColor20;
    if ([self matching]) {
                square20.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage20 = [UIImage imageNamed:@"checkMark.png"];
                [square20 setImage:buttonImage20 forState:UIControlStateNormal];
            }
}

-(IBAction)box21press{
    smallInt = randomColor21;
    if ([self matching]) {
                square21.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage21 = [UIImage imageNamed:@"checkMark.png"];
                [square21 setImage:buttonImage21 forState:UIControlStateNormal];
    }
}

-(IBAction)box22press{
    smallInt = randomColor22;
  if ([self matching]) {
                square22.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage22 = [UIImage imageNamed:@"checkMark.png"];
                [square22 setImage:buttonImage22 forState:UIControlStateNormal];
    }
}

-(IBAction)box23press{
    smallInt = randomColor23;
    if ([self matching]) {
                square23.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage23 = [UIImage imageNamed:@"checkMark.png"];
                [square23 setImage:buttonImage23 forState:UIControlStateNormal];
    }
}

-(IBAction)box24press{
    smallInt = randomColor24;
   if ([self matching]) {
                square24.backgroundColor = [UIColor whiteColor];
                UIImage *buttonImage24 = [UIImage imageNamed:@"checkMark.png"];
                [square24 setImage:buttonImage24 forState:UIControlStateNormal];
            }
}

-(void)changeRedboxAlpha{
    redBox.alpha = 0;
    if (bigInt != -1) {
        //[self minusScore];
        [temp1 invalidate];
        [temp2 invalidate];
        [temp3 invalidate];
        [temp4 invalidate];
        [temp5 invalidate];
        [temp6 invalidate];
        [temp7 invalidate];
        [temp8 invalidate];
        [temp9 invalidate];
        [temp10 invalidate];
        [temp11 invalidate];
        [temp12 invalidate];
        [temp13 invalidate];
        [temp14 invalidate];
        [temp15 invalidate];
        [temp16 invalidate];
        [temp17 invalidate];
        [temp18 invalidate];
        [temp19 invalidate];
        [temp20 invalidate];
        [temp21 invalidate];
        [temp22 invalidate];
        [temp23 invalidate];
        [temp24 invalidate];
    }
}

-(void)addScore{
    score = score + 1;
    
}

-(void)minusScore{
    score = score - 1;
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
