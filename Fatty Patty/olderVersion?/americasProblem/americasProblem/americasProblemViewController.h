//
//  americasProblemViewController.h
//  americasProblem
//
//  Created by Steven Grutman on 9/19/12.
//  Copyright (c) 2012 Steven Grutman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface americasProblemViewController : UIViewController{
    IBOutlet UIButton *startbutton;
    NSTimer * randomMain;
    CGPoint pos;
    CGPoint pos1;
    IBOutlet UIView *player;
    IBOutlet UIView *enemy;
    IBOutlet UIView *enemy1;
    NSTimer * speedUp;
    IBOutlet UIImageView *burger;
    IBOutlet UIImageView *burger1;
    NSTimer * replaceBurger;
    NSTimer * replaceBurger1;
    int *score;
    IBOutlet UILabel *scoreLabel;
    int *startSpeed;
    int *startSpeed1;
    ADBannerView *banner;
    IBOutlet UIView *blueBackground;
    IBOutlet UILabel *fattyPatty;
    IBOutlet UIButton *gamecenter;
    IBOutlet UIImageView *nonUsedPatty1;
    IBOutlet UIImageView *nonUsedPatty2;
}

-(IBAction)start;
@property (nonatomic, assign)BOOL bannerIsVisible;
@property (nonatomic, retain)IBOutlet ADBannerView *banner;



@end
