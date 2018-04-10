//
//  flappyMuffinViewController.h
//  flappyMuffin
//
//  Created by Steven Grutman on 2/13/14.
//  Copyright (c) 2014 Steven Grutman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>


@interface flappyMuffinViewController : UIViewController <ADBannerViewDelegate>{
    
    IBOutlet UIView *tapper;
    IBOutlet UIImageView *muffin;
     IBOutlet UIImageView *topBox;
     IBOutlet UIImageView *bottomBox;
    IBOutlet UILabel *scoreL;
    IBOutlet UILabel *high;
   
    NSTimer * timer;
    NSTimer * crap;
    NSTimer * timer3;
    
    double haha;
    
    CGPoint position;
    
    int twoOne;
    int yy;
    int pic1;
    int score;
    int plahb;
    int games;
    int highscore;
    int totalTime;
    
    ADBannerView *banner;
    
    id hh;
}

-(IBAction)tap;
-(IBAction)newGame;
-(IBAction)showLeader;


@end
