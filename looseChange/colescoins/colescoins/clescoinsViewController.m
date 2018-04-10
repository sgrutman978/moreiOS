//
//  clescoinsViewController.m
//  colescoins
//
//  Created by Steven Grutman on 12/19/12.
//  Copyright (c) 2012 Steven Grutman. All rights reserved.
//

#import "clescoinsViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface clescoinsViewController ()

@end

@implementation clescoinsViewController



-(void)viewDidLoad
{
    [super viewDidLoad];
    coins = [NSArray arrayWithObjects:coin1, coin2, coin3, coin4, coin5, coin6, coin7, coin8, coin9, coin10, coin11, coin12, coin13, coin14, coin15, coin16, coin17, coin18, coin19, coin20, coin21, coin22, coin23, coin24, coin25, nil];
     randShow = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(setStuff) userInfo:nil repeats:NO];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)setStuff{
for (aa = 0; aa <= 24; aa++) {
    go1 = [coins objectAtIndex:aa];
    go1.alpha = 1;
    go1.center = CGPointMake(1000, 1000);
}
}

-(IBAction)play{
    [easyB setHidden:YES];
    [medB setHidden:YES];
    [playB setHidden:YES];
    [insaneB setHidden:YES];
    error = 0;
    score = 0;
    randShow = [NSTimer scheduledTimerWithTimeInterval:.24 target:self selector:@selector(changeIt) userInfo:nil repeats:YES];
    redden = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(reds) userInfo:nil repeats:YES];
}

-(IBAction)med{
    [easyB setHidden:YES];
    [medB setHidden:YES];
    [playB setHidden:YES];
    [insaneB setHidden:YES];
    error = 0;
    score = 0;
    randShow = [NSTimer scheduledTimerWithTimeInterval:.33 target:self selector:@selector(changeIt) userInfo:nil repeats:YES];
    redden = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(reds) userInfo:nil repeats:YES];
}

-(IBAction)easy{
    [easyB setHidden:YES];
    [medB setHidden:YES];
    [playB setHidden:YES];
    [insaneB setHidden:YES];
    error = 0;
    score = 0;
    randShow = [NSTimer scheduledTimerWithTimeInterval:.42 target:self selector:@selector(changeIt) userInfo:nil repeats:YES];
    redden = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(reds) userInfo:nil repeats:YES];
}


-(IBAction)insane{
    [easyB setHidden:YES];
    [medB setHidden:YES];
    [playB setHidden:YES];
    [insaneB setHidden:YES];
    error = 0;
    score = 0;
    randShow = [NSTimer scheduledTimerWithTimeInterval:.15 target:self selector:@selector(changeIt) userInfo:nil repeats:YES];
    redden = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(reds) userInfo:nil repeats:YES];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *myTouch = [[event allTouches] anyObject];
    cursor.center = [myTouch locationInView:self.view];
    NSLog(@"%d", bb);
    bb = 0;
    NSLog(@"%d", bb);
    for (aa = 0; aa <= 24; aa++) {
        go1 = [coins objectAtIndex:aa];
        if (CGRectIntersectsRect(cursor.frame, go1.frame) && bb == 0) {
            if ([go1.image isEqual:[UIImage imageNamed:@"bomb2.png"]]) {
                pic1 = 0;
                AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
                [self setStuff];
                [redden invalidate];
                
                crap = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(explode) userInfo:nil repeats:YES];
            }
            score++;
            go1.center = CGPointMake(1000, 1000);
            bb = 1;
            go1.alpha = 1.0;
        }
    }
    
}




-(void)explode{
    boom.alpha = 1.0;
    pic1++;
    [randShow invalidate];
      
    if (pic1 == 1) {
        boom.image = [UIImage imageNamed:@"e1.png"];
        [self setStuff];
        [redden invalidate];
         
       
    }
    if (pic1 == 2) {
        boom.image = [UIImage imageNamed:@"e2.png"];
   
    }
    if (pic1 == 3) {
        boom.image = [UIImage imageNamed:@"e3.png"];
     
    }
    if (pic1 == 4) {
        boom.image = [UIImage imageNamed:@"e4.png"];
        
    }
    if (pic1 == 5) {
        boom.image = [UIImage imageNamed:@"e5.png"];
      
    }
    if (pic1 == 6) {
        boom.image = [UIImage imageNamed:@"e6.png"];
        
    }
    if (pic1 == 7) {
        boom.image = [UIImage imageNamed:@"e7.png"];

    }
    if (pic1 == 8) {
        boom.image = [UIImage imageNamed:@"e8.png"];
       
    }
    if (pic1 == 9) {
        boom.image = [UIImage imageNamed:@"e9.png"];
    
    }
    if (pic1 == 10) {
        boom.image = [UIImage imageNamed:@"e10.png"];
        
    }
    if (pic1 == 11) {
        boom.image = [UIImage imageNamed:@"e11.png"];
       
        //[boom setHidden:YES];
        //[crap invalidate];
    }
    if (pic1 == 12) {
        boom.image = [UIImage imageNamed:@"e12.png"];
        [easyB setTitle:[NSString stringWithFormat:@"%d", score] forState:UIControlStateNormal];
        boom.alpha = 0.0;
        [easyB setHidden:NO];
        [medB setHidden:NO];
        [playB setHidden:NO];
        [insaneB setHidden:NO];
        [randShow invalidate];
        [crap invalidate];
    }
}




-(void)changeIt{
    
    jj = 0;
    kk = 0;
    NSLog(@"vvvvvv");
    cc = random() % 25;
    go2 = [coins objectAtIndex:cc];
    
    if (go2.center.x == 1000){
    
    dd = random() % 9;
    if (dd == 0) {
        [go2 setImage:[UIImage imageNamed:@"green.png"]];
    }
    if (dd == 1) {
        [go2 setImage:[UIImage imageNamed:@"orange.png"]];
    }
    if (dd == 2) {
        [go2 setImage:[UIImage imageNamed:@"bomb2.png"]];
    }
        if (dd == 3 || dd == 4) {
            [go2 setImage:[UIImage imageNamed:@"red.png"]];
        }
    if (dd != 0 && dd!= 1 && dd != 2 && dd != 3 && dd != 4) {
        [go2 setImage:[UIImage imageNamed:@"money.png"]];
    }

    
    
        while (go2.center.x == 1000) {
            kk = 0;
          go2.center = CGPointMake((random() % 270) + 30, (random() % 410) + 30);
            for (ee = 0; ee <= 24; ee++){
                go1 = [coins objectAtIndex:ee];
                if (CGRectIntersectsRect(go2.frame, go1.frame) && go2.center.x != 1000 && go1.center.x != 1000 && ee != cc) {
                    if ([go2.image isEqual:[UIImage imageNamed:@"bomb2.png"]] || [go1.image isEqual:[UIImage imageNamed:@"bomb2.png"]]){
                    NSLog(@"%d", ee);
                    go2.center = CGPointMake(1000, 1000);
                    }
                }
            }
        }
                
    }
}


-(void)reds{
    
    for (ee = 0; ee <= 24; ee++){
        
        go2 = [coins objectAtIndex:ee];
        
        if (go2.alpha <= 0.01) {
            if ([go2.image isEqual:[UIImage imageNamed:@"bomb2.png"]]) {
                go2.center = CGPointMake(1000, 1000);
                go2.alpha = 1.0;
            }else{
                if (error <= 2){
            go2.center = CGPointMake(1000, 1000);
            go2.alpha = 1.0;
            error++;
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
                }
            }
        }
        
        
        
        if (go2.center.x != 1000){
            
            go2.alpha = go2.alpha - .0025;
                
            }
        }
    
    if (error == 3) {
        pic1 = 0;
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        crap = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(explode) userInfo:nil repeats:YES];
        [self setStuff];
        [easyB setHidden:NO];
        [medB setHidden:NO];
        [playB setHidden:NO];
        [insaneB setHidden:NO];
        [randShow invalidate];
        [redden invalidate];
    }
    
    NSLog(@"%d", error);
    
    }


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
