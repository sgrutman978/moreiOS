//
//  clescoinsViewController.h
//  colescoins
//
//  Created by Steven Grutman on 12/19/12.
//  Copyright (c) 2012 Steven Grutman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface clescoinsViewController : UIViewController{
    
    IBOutlet UIImageView *coin1;
    IBOutlet UIImageView *coin2;
    IBOutlet UIImageView *coin3;
    IBOutlet UIImageView *coin4;
    IBOutlet UIImageView *coin5;
    IBOutlet UIImageView *coin6;
    IBOutlet UIImageView *coin7;
    IBOutlet UIImageView *coin8;
    IBOutlet UIImageView *coin9;
    IBOutlet UIImageView *coin10;
    IBOutlet UIImageView *coin11;
    IBOutlet UIImageView *coin12;
    IBOutlet UIImageView *coin13;
    IBOutlet UIImageView *coin14;
    IBOutlet UIImageView *coin15;
    IBOutlet UIImageView *coin16;
    IBOutlet UIImageView *coin17;
    IBOutlet UIImageView *coin18;
    IBOutlet UIImageView *coin19;
    IBOutlet UIImageView *coin20;
    IBOutlet UIImageView *coin21;
    IBOutlet UIImageView *coin22;
    IBOutlet UIImageView *coin23;
    IBOutlet UIImageView *coin24;
    IBOutlet UIImageView *coin25;
    NSArray *coins;
    int aa;
    int bb;
    int cc;
    int dd;
    int ee;
    int ff;
    int gg;
    int hh;
    int ii;
    int jj;
    int kk;
    UIImageView *go1;
    UIImageView *go2;
    UIImageView *go3;
    UIImageView *go4;
    UIImageView *go5;
    UIImageView *go6;
    UIImageView *go7;
    UIImageView *go8;
    UIImageView *go9;
    IBOutlet UIButton *cursor;
    NSTimer * randShow;
    IBOutlet UIButton *playB;
    NSTimer * redden;
    int error;
    int pic1;
    IBOutlet UIImageView *boom;
    NSTimer * crap;
    IBOutlet UIButton *medB;
    IBOutlet UIButton *easyB;
    IBOutlet UIButton *insaneB;
    int score;
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;
-(IBAction)play;
-(IBAction)med;
-(IBAction)easy;
-(IBAction)insane;

@end
