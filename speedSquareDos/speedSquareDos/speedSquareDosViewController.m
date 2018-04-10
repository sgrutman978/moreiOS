//
//  speedSquareDosViewController.m
//  speedSquareDos
//
//  Created by Steven Grutman on 1/24/13.
//  Copyright (c) 2013 Steven Grutman. All rights reserved.
//

#import "speedSquareDosViewController.h"
#import <iAd/iAd.h>

@interface speedSquareDosViewController ()

@end

@implementation speedSquareDosViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    s9.autoresizingMask = (UIViewAutoresizingFlexibleBottomMargin | \
                                          UIViewAutoresizingFlexibleTopMargin);
    squares = [NSArray arrayWithObjects:s1, s2, s3, s4, s5, s6, s7, s8, s9, nil];
     checks = [NSArray arrayWithObjects:c1, c2, c3, c4, c5, c6, c7, c8, c9, nil];
   // colors = [NSArray arrayWithObjects:0, 0, 1, 1, 0, 1, 0, 1, 0.8, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0.75, 1, 0.08, 0.36, 0, 1, 0.5, 0.5, 0, 1, 0, 0, 0, 1, 0.44, 0, 0.66, 1, 1, 0.5, 0, 1, 0.4, 0.2, 0, 1, nil];
    dd = 0;
    [self change];
    [self change2];
    [self menuss];
    
    
    score = 0;
    dd = 1;
    hh = 0;
        times = [NSTimer scheduledTimerWithTimeInterval:10 target:self selector:@selector(change) userInfo:nil repeats:YES];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:.75 target:self selector:@selector(less) userInfo:nil repeats:YES];
    
    menus = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(menuss) userInfo:nil repeats:YES];
    
    }
	// Do any additional setup after loading the view, typically from a nib.


-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *myTouch = [[event allTouches] anyObject];
	cursor.center = [myTouch locationInView:self.view];
    
    for (cc = 0; cc <= 8; cc++) {
        going = [squares objectAtIndex:cc];
        goingc = [checks objectAtIndex:cc];
        if (CGRectIntersectsRect(going.frame, cursor.frame)) {
            if ([back.backgroundColor isEqual:going.backgroundColor]) {
                if (line.center.x <= 120){
                line.center = CGPointMake(line.center.x + 2, line.center.y);
                 fuse.center = CGPointMake(fuse.center.x + 2, fuse.center.y);
                }
                score++;
                [scoreL setText:[NSString stringWithFormat:@"Score: %d", score]];
            [goingc setImage:[UIImage imageNamed:@"checkMark.png"]];
                [going setBackgroundColor:[UIColor clearColor]];
                [self ticTac];
                
            }else{
                line.center = CGPointMake(line.center.x - 4, line.center.y);
                fuse.center = CGPointMake(fuse.center.x - 4, fuse.center.y);
            }
        }
    }
    
    [self change2];

}


-(IBAction)play{
    pizza = 0;
    [self change];
    [self change2];
    gg = 0;
    hh = 0;
    ff = 0;
    score = 0;
    [back setHidden:NO];
    [menu setHidden:YES];
    line.center = CGPointMake(135, line.center.y);
    fuse.center = CGPointMake(220, fuse.center.y);
    [scoreL setText:[NSString stringWithFormat:@"Score: %d", score]];
    
    
}


-(void)ticTac{
    
    gg = 0;
    ff = 0;
    if ([c1.image isEqual:[UIImage imageNamed:@"checkMark.png"]] && [c2.image isEqual:[UIImage imageNamed:@"checkMark.png"]] && [c3.image isEqual:[UIImage imageNamed:@"checkMark.png"]]){
        gg++;
    }
    if ([c4.image isEqual:[UIImage imageNamed:@"checkMark.png"]] && [c5.image isEqual:[UIImage imageNamed:@"checkMark.png"]] && [c6.image isEqual:[UIImage imageNamed:@"checkMark.png"]]){
        gg++;
    }
    if ([c7.image isEqual:[UIImage imageNamed:@"checkMark.png"]] && [c8.image isEqual:[UIImage imageNamed:@"checkMark.png"]] && [c9.image isEqual:[UIImage imageNamed:@"checkMark.png"]]){
        gg++;
    }
    if ([c1.image isEqual:[UIImage imageNamed:@"checkMark.png"]] && [c4.image isEqual:[UIImage imageNamed:@"checkMark.png"]] && [c7.image isEqual:[UIImage imageNamed:@"checkMark.png"]]){
        gg++;
    }
    if ([c2.image isEqual:[UIImage imageNamed:@"checkMark.png"]] && [c5.image isEqual:[UIImage imageNamed:@"checkMark.png"]] && [c8.image isEqual:[UIImage imageNamed:@"checkMark.png"]]){
        gg++;
    }
    if ([c3.image isEqual:[UIImage imageNamed:@"checkMark.png"]] && [c6.image isEqual:[UIImage imageNamed:@"checkMark.png"]] && [c9.image isEqual:[UIImage imageNamed:@"checkMark.png"]]){
        gg++;
    }
    if ([c1.image isEqual:[UIImage imageNamed:@"checkMark.png"]] && [c5.image isEqual:[UIImage imageNamed:@"checkMark.png"]] && [c9.image isEqual:[UIImage imageNamed:@"checkMark.png"]]){
        gg++;
    }
    if ([c3.image isEqual:[UIImage imageNamed:@"checkMark.png"]] && [c5.image isEqual:[UIImage imageNamed:@"checkMark.png"]] && [c7.image isEqual:[UIImage imageNamed:@"checkMark.png"]]){
        gg++;
    }
    
    while (gg != hh && ff == 0) {
        if (line.center.x <= 132) {
            hh++;
            line.center = CGPointMake(line.center.x + 20, line.center.y);
            fuse.center = CGPointMake(fuse.center.x + 20, fuse.center.y);
            ff = 1;
        }else{
            hh++;
            line.center = CGPointMake(135, line.center.y);
            fuse.center = CGPointMake(220, fuse.center.y);
            ff = 1;
        }
    }
    
}



-(void)less{
    
    if (line.center.x >= -36){
    line.center = CGPointMake(line.center.x - 3, line.center.y);
    fuse.center = CGPointMake(fuse.center.x - 3, fuse.center.y);
    }else{
        if (pizza == 0) {
        pic1 = 0;
        crap = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(explode) userInfo:nil repeats:YES];
            pizza = 1;
        }
    }
    
}


-(void)explode{
    [boom setHidden:NO];
    pic1++;
    boom.image = [UIImage imageNamed:[[@"e" stringByAppendingString:[NSString stringWithFormat:@"%d",pic1]] stringByAppendingString:@".png"]];
        //[boom setHidden:YES];
        //[crap invalidate];
    if (pic1 == 6) {
        UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"BOOM !!!"] message:[NSString stringWithFormat:@"You got %d matches !", score] delegate:nil cancelButtonTitle:@"Lets go again !" otherButtonTitles:nil];
        
        [alert1 show];
    }
    if (pic1 == 12) {
        [crap invalidate];
         [crap invalidate];
        boom.image = [UIImage imageNamed:@"e12.png"];
        pic1 = 14;
        [boom setHidden:YES];
        [self menuss];
        [menu setBackgroundColor:back.backgroundColor];
        [menu setHidden:NO];
        [back setHidden:YES];
    }
}





-(void)menuss{
    [self colorChange];
    menu.backgroundColor = tempColor;
    [self colorChange];
    play.backgroundColor = tempColor;
    [self colorChange];
    inst.backgroundColor = tempColor;
    [self colorChange];
    highs.backgroundColor = tempColor;
}


-(void)change2{
    [self colorChange];
    back.backgroundColor = tempColor;
[space setBackgroundColor:back.backgroundColor];
}


-(void)change{
    
    for (aa = 0; aa <= 8; aa++) {
        hh = 0;
        going = [squares objectAtIndex:aa];
        goingc = [checks objectAtIndex:aa];
        //if (dd == 0 ||[goingc.image isEqual:[UIImage imageNamed:@"checkMark.png"]]){
        [goingc setImage:[UIImage imageNamed:@""]];
        [self colorChange];
            going.backgroundColor = tempColor;
        //}
    }
    
}

-(void)colorChange{
    bb = random() % 13;
    if (bb == 0) {
        tempColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
    }
    if (bb == 1) {
        tempColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:1];
    }
    if (bb == 2) {
        tempColor = [UIColor colorWithRed:0 green:1 blue:0 alpha:1];
    }
    if (bb == 3) {
    tempColor = [UIColor colorWithRed:0.8 green:0 blue:1 alpha:1];
    }
    if (bb == 4) {
        tempColor = [UIColor colorWithRed:1 green:1 blue:0 alpha:1];
    }
    if (bb == 5) {
        tempColor = [UIColor colorWithRed:0 green:1 blue:1 alpha:1];
    }
    if (bb == 6) {
        tempColor = [UIColor colorWithRed:1 green:0 blue:0.75 alpha:1];
    }
    if (bb == 7) {
        tempColor = [UIColor colorWithRed:0.08 green:0.36 blue:0 alpha:1];
    }
    if (bb == 8) {
        tempColor = [UIColor colorWithRed:0.5 green:0.5 blue:0 alpha:1];
    }
    if (bb == 9) {
        tempColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
    }
    if (bb == 10) {
        tempColor = [UIColor colorWithRed:0.44 green:0 blue:0.66 alpha:1];
    }
    if (bb == 11) {
        tempColor = [UIColor colorWithRed:1 green:0.5 blue:0 alpha:1];
    }
    if (bb == 12) {
        tempColor = [UIColor colorWithRed:0.4 green:0.2 blue:0 alpha:1];
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


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
