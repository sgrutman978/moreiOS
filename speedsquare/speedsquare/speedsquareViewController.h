//
//  speedsquareViewController.h
//  speedsquare
//
//  Created by Steven Grutman on 10/1/12.
//  Copyright (c) 2012 Steven Grutman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GameKit/GameKit.h>
#import <iAd/iAd.h>


@interface speedsquareViewController : UIViewController <ADBannerViewDelegate> {
    IBOutlet UIButton *firstBigRect;
    IBOutlet UIButton *secondBigRect;
    IBOutlet UIButton *thirdBigRect;
    IBOutlet UIButton *fourthBigRect;
    IBOutlet UIImageView *glowBox;
    IBOutlet UIView *gameView;
     IBOutlet UIView *menuView;
    int tempInt;
    UIColor *tempColor;
    int max;
    NSTimer * startSquareMoves;
    IBOutlet UIButton *square1;
    IBOutlet UIButton *square2;
    IBOutlet UIButton *square3;
    IBOutlet UIButton *square4;
    IBOutlet UIButton *square5;
    IBOutlet UIButton *square6;
    IBOutlet UIButton *square7;
    IBOutlet UIButton *square8;
    IBOutlet UIButton *square9;
    IBOutlet UIButton *square10;
    IBOutlet UIButton *square11;
    IBOutlet UIButton *square12;
    IBOutlet UIButton *square13;
    IBOutlet UIButton *square14;
    IBOutlet UIButton *square15;
    IBOutlet UIButton *square16;
    IBOutlet UIButton *square17;
    IBOutlet UIButton *square18;
    IBOutlet UIButton *square19;
    IBOutlet UIButton *square20;
    IBOutlet UIButton *square21;
    IBOutlet UIButton *square22;
    IBOutlet UIButton *square23;
    IBOutlet UIButton *square24;
    int randomColor1;
    int randomColor2;
    int randomColor3;
    int randomColor4;
    int randomColor5;
    int randomColor6;
    int randomColor7;
    int randomColor8;
    int randomColor9;
    int randomColor10;
    int randomColor11;
    int randomColor12;
    int randomColor13;
    int randomColor14;
    int randomColor15;
    int randomColor16;
    int randomColor17;
    int randomColor18;
    int randomColor19;
    int randomColor20;
    int randomColor21;
    int randomColor22;
    int randomColor23;
    int randomColor24;
    int randomColor25;
    int randomColor26;
    int randomColor27;
    int randomColor28;
    int randomColor29;
    int randomColor30;
    int bigInt;
    int smallInt;
    NSArray *trickster;
    int pizza124;
    IBOutlet UIButton *redBox;
    NSArray *arrOfOb;
    NSArray *arrOfNum;
    UIButton *tempOb;
    NSTimer * temp1;
    NSTimer * temp2;
    NSTimer * temp3;
    NSTimer * temp4;
    NSTimer * temp5;
    NSTimer * temp6;
    NSTimer * temp7;
    NSTimer * temp8;
    NSTimer * temp9;
    NSTimer * temp10;
    NSTimer * temp11;
    NSTimer * temp12;
    NSTimer * temp13;
    NSTimer * temp14;
    NSTimer * temp15;
    NSTimer * temp16;
    NSTimer * temp17;
    NSTimer * temp18;
    NSTimer * temp19;
    NSTimer * temp20;
    NSTimer * temp21;
    NSTimer * temp22;
    NSTimer * temp23;
    NSTimer * temp24;
    UIImage *checkImage;
    UIImage *blankImage;
    int whichRect;
    int score;
    IBOutlet UILabel *scoreLabel;
    NSTimer * whichRect0;
    NSTimer * timer;
    int time;
    CGPoint point1;
    NSTimer * timer1;
    IBOutlet UIView *timeView;
    IBOutlet UILabel *timeLabel;
    int highscore;
    int totalScore;
    IBOutlet UIButton *play;
    IBOutlet UIButton *highscores;
    NSTimer * startButtons;
    int totalGames;
  
    
    }

-(IBAction)changeSwitch;
-(IBAction)showLeader;
-(IBAction)firstBigRectPress;
-(IBAction)secondBigRectPress;
-(IBAction)thirdBigRectPress;
-(IBAction)fourthBigRectPress;
-(IBAction)practice;
-(IBAction)box1press;
-(IBAction)box2press;
-(IBAction)box3press;
-(IBAction)box4press;
-(IBAction)box5press;
-(IBAction)box6press;
-(IBAction)box7press;
-(IBAction)box8press;
-(IBAction)box9press;
-(IBAction)box10press;
-(IBAction)box11press;
-(IBAction)box12press;
-(IBAction)box13press;
-(IBAction)box14press;
-(IBAction)box15press;
-(IBAction)box16press;
-(IBAction)box17press;
-(IBAction)box18press;
-(IBAction)box19press;
-(IBAction)box20press;
-(IBAction)box21press;
-(IBAction)box22press;
-(IBAction)box23press;
-(IBAction)box24press;
-(IBAction)twitter;
-(IBAction)like;


@end
