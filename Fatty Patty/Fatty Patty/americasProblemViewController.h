//
//  americasProblemViewController.h
//  Fatty Patty
//
//  Created by Steven Grutman on 9/20/12.
//  Copyright (c) 2012 Steven Grutman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface americasProblemViewController : UIViewController <ADBannerViewDelegate> {
    
    IBOutlet UIButton *startbutton;
    NSTimer * randomMain;
    CGPoint pos;
    CGPoint pos1;
    IBOutlet UIImageView *player;
    IBOutlet UIImageView *enemy;
    IBOutlet UIImageView *enemy1;
    NSTimer * speedUp;
    NSTimer * speedUp1;
    IBOutlet UIImageView *burger;
    IBOutlet UIImageView *burger1;
    NSTimer * replaceBurger;
    NSTimer * replaceBurger1;
    int *score;
    IBOutlet UILabel *scoreLabel;
    int *startSpeed;
    int *startSpeed1;
    IBOutlet UIView *blueBackground;
    IBOutlet UILabel *fattyPatty;
    IBOutlet UIButton *gamecenter;
    IBOutlet UIImageView *unused1;
    IBOutlet UIImageView *unused2;
    IBOutlet UIImageView *unused3;
    IBOutlet UIImageView *unused4;
    IBOutlet UIImageView *unused5;
    IBOutlet UIImageView *unused6;
    IBOutlet UIImageView *unused7;
    IBOutlet UIImageView *unusedHungryGuy;
    int *patties;
    IBOutlet UILabel *pattiesLabel;
    IBOutlet UIView *gameView;
    IBOutlet UIView *powerUps;
    int *games;
    int *pattiesPerGame;
    int *time;
    int timeRecord;
    NSTimer * timer;
    IBOutlet UILabel *timeLabel;
    int *totalTime;
    int *puPatties;
    IBOutlet UIButton *powerUpsButton;
    IBOutlet UIButton *menu;
    int ss;
    int bs;
    int sc;
    int i;
    IBOutlet UILabel *ssl;
     IBOutlet UILabel *bsl;
     IBOutlet UILabel *scl;
      IBOutlet UILabel *il;
    IBOutlet UIButton *bigBox;
    CGPoint pos2;
    CGPoint pos3;
    IBOutlet UIButton *ssb;
    IBOutlet UIButton *bsb;
    IBOutlet UIButton *scb;
    IBOutlet UIButton *ib;
    NSTimer * crap;
     NSTimer * crap1;
     NSTimer * crap2;
    NSTimer * crap3;
    NSTimer * crap4;
    NSTimer * crap5;
      NSTimer * crap6;
     NSTimer * crap7;
    NSTimer * crap8;
    int lives;
    CGPoint pos4;
    CGPoint pos5;
    int blah;
    IBOutlet UILabel *pul;
    double hh;
    int invin;
    int ppp;
}


-(IBAction)start;
-(IBAction)showLeader;
-(IBAction)showPower;
-(IBAction)menu;
-(IBAction)addss;
-(IBAction)addbs;
-(IBAction)addsc;
-(IBAction)addss1;
-(IBAction)addbs1;
-(IBAction)addsc1;
-(IBAction)like;
-(IBAction)twitter;



@end
