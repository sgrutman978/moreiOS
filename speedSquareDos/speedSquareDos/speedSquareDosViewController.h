//
//  speedSquareDosViewController.h
//  speedSquareDos
//
//  Created by Steven Grutman on 1/24/13.
//  Copyright (c) 2013 Steven Grutman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface speedSquareDosViewController : UIViewController <ADBannerViewDelegate> {
    
    IBOutlet UIButton *s1;
    IBOutlet UIButton *s2;
    IBOutlet UIButton *s3;
    IBOutlet UIButton *s4;
    IBOutlet UIButton *s5;
    IBOutlet UIButton *s6;
    IBOutlet UIButton *s7;
    IBOutlet UIButton *s8;
    IBOutlet UIButton *s9;
    
    UIColor *tempColor;
    IBOutlet UIImageView *c1;
    IBOutlet UIImageView *c2;
    IBOutlet UIImageView *c3;
    IBOutlet UIImageView *c4;
    IBOutlet UIImageView *c5;
    IBOutlet UIImageView *c6;
    IBOutlet UIImageView *c7;
    IBOutlet UIImageView *c8;
    IBOutlet UIImageView *c9;
    UIButton *going;
    NSArray *squares;
    NSArray *checks;
    NSArray *colors;
    UIImageView *goingc;
    int pizza;
    int aa;
    int bb;
    int cc;
    int dd;
    int ee;
    int ff;
    int gg;
    int hh;
    int ii;
    NSTimer * times;
    IBOutlet UIView *back;
    IBOutlet UIButton *cursor;
    IBOutlet UIButton *line;
    IBOutlet UIImageView *fuse;
    NSTimer * timer;
    IBOutlet UIButton *space;
    IBOutlet UIImageView *boom;
    int pic1;
    NSTimer * crap;
    IBOutlet UIImageView *bomb;
    IBOutlet UILabel *scoreL;
    int score;
    IBOutlet UIView *menu;
    IBOutlet UIButton *play;
    IBOutlet UIButton *inst;
    IBOutlet UIButton *highs;
    NSTimer * menus;
    
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
-(IBAction)play;

@end
