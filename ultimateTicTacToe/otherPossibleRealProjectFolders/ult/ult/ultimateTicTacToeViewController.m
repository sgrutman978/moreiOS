//
//  ultimateTicTacToeViewController.m
//  ultimateTicTacToe
//
//  Created by Steven Grutman on 11/30/12.
//  Copyright (c) 2012 Steven Grutman. All rights reserved.
//

#import "ultimateTicTacToeViewController.h"
#import <GameKit/GameKit.h>

@interface ultimateTicTacToeViewController ()

@end

@implementation ultimateTicTacToeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    space1.autoresizingMask = (UIViewAutoresizingFlexibleBottomMargin | \
                                          UIViewAutoresizingFlexibleTopMargin);
    
    buttons = [NSArray arrayWithObjects:space1, space2, space3, space4, space5, space6, space7, space8, space9, space10, space11, space12, space13, space14, space15, space16, space17, space18, space19, space120, space121, space122, space123, space124, space125, space126, space127, space128, space129, space130, space131, space132, space133, space134, space135, space136, space137, space138, space139, space140, space141, space142, space143, space144, space145, space146, space147, space148, space149, space150, space151, space152, space153, space154, space155, space156, space157, space158, space159, space160, space161, space162, space163, space164, space165, space166, space167, space168, space169, space170, space171, space172, space173, space174, space175, space176, space177, space178, space179, space180, space181, nil];
    
    big = [NSArray arrayWithObjects:space182, space183, space184, space185, space186, space187, space188, space189, space190, nil];
    
    blank1 = -1;
    blank2 = -1;
    lasto = 5;
    lasto2 = 6;
    lasto3 = 7;
    lasto4 = 8;
    lasto5 = 9;
    lasto6 = 10;
    lasto7 = 11;
    win = 0;
    person = 0;
    
    [space182 setTitle:@"." forState:UIControlStateNormal];
    [space183 setTitle:@"." forState:UIControlStateNormal];
    [space184 setTitle:@"." forState:UIControlStateNormal];
    [space185 setTitle:@"." forState:UIControlStateNormal];
    [space186 setTitle:@"." forState:UIControlStateNormal];
    [space187 setTitle:@"." forState:UIControlStateNormal];
    [space188 setTitle:@"." forState:UIControlStateNormal];
    [space189 setTitle:@"." forState:UIControlStateNormal];
    [space190 setTitle:@"." forState:UIControlStateNormal];
    
    [self loadScore];
    
   [[GKLocalPlayer localPlayer] authenticateWithCompletionHandler:^(NSError *error) {
        if (error == nil) {
            NSLog(@"Authentication Successful");
        } else {
            NSLog(@"Authentication Failed");
        }
    }];
  
    cover.alpha = .8;
    twoPlayer = 0;
    
    ghj = [NSTimer scheduledTimerWithTimeInterval:.1 target:self selector:@selector(reset4) userInfo:nil repeats:NO];
    
   
	// Do any additional setup after loading the view, typically from a nib.
    
}





-(IBAction)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
   
    
    if (win == 0 && twoPlayer != 0){
        UITouch *myTouch = [[event allTouches] anyObject];
        cursor.center = [myTouch locationInView:self.view];
        
        
        gg = 0; 
        blah = 0;
        
        while (gg <= 80) {
            
            go = [buttons objectAtIndex:gg];
            if (CGRectIntersectsRect(go.frame, cursor.frame) && [go.titleLabel.text isEqualToString:@"."]) {
                if (person%2 == 0) {
                    counter = 0;
                    while (counter <= 80){
                        going = [buttons objectAtIndex:counter];
                        [going setBackgroundColor:[UIColor clearColor]];
                        counter++;
                    }
                    gos = gg;
                    [go setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
                    [go setTitle:@"X" forState:UIControlStateNormal];
                    blah = 1;
                    [self checkMatch];
                    if (twoPlayer == 1){
                        //comp = [NSTimer scheduledTimerWithTimeInterval:.5 target:self selector:@selector(comp) userInfo:nil repeats:NO];
                        [self comp];        
                    }
                    //     [self makeIt];
                    
                    //a1 = 2;
                }else{
                    [go setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [go setTitle:@"O" forState:UIControlStateNormal];
                    [self checkMatch];
                    [self checkMatch];
                    
                    //a1 = 1;
                }
                person++;
            }
            gg++;
        }
        
        
        
        if (person%2 == 0 ){
            
            label.textColor = [UIColor redColor];
            label.text = @"PLAYER X, its your turn !!!!!";
            
        }else{
            
            label.textColor = [UIColor greenColor];
            label.text = @"PLAYER O, its your turn !!!!!";
            
        }
        [self checkMatch];
        
        
        
    }
}


-(void)comp{
    [self computer];
    [self checkMatch];
    [self checkMatch];
    going = [buttons objectAtIndex:lasto];
    [going setBackgroundColor:[UIColor yellowColor]];
}



-(void)checkMatch{
    
    if (twoPlayer == 1){
    [self subScore];
        [self subScore2];
        [self subScore3];
        [self subScore4];
    }
    
    if ([space182.titleLabel.text isEqualToString:@"."]){
        
    }else{
        lines1.alpha = 0;
        lines2.alpha = 0;
        lines3.alpha = 0;
        lines4.alpha = 0;
    }
    
    
    if ([space183.titleLabel.text isEqualToString:@"."]){
        
    }else{
        lines5.alpha = 0;
        lines6.alpha = 0;
        lines7.alpha = 0;
        lines8.alpha = 0;
    }
    
    
    if ([space184.titleLabel.text isEqualToString:@"."]){
        
    }else{
        lines9.alpha = 0;
        lines10.alpha = 0;
        lines11.alpha = 0;
        lines12.alpha = 0;
    }
    
    
    if ([space185.titleLabel.text isEqualToString:@"."]){
        
    }else{
        lines13.alpha = 0;
        lines14.alpha = 0;
        lines15.alpha = 0;
        lines16.alpha = 0;
    }
    
    
    if ([space186.titleLabel.text isEqualToString:@"."]){
        
    }else{
        lines17.alpha = 0;
        lines18.alpha = 0;
        lines19.alpha = 0;
        lines20.alpha = 0;
    }
    
    
    if ([space187.titleLabel.text isEqualToString:@"."]){
        
    }else{
        lines21.alpha = 0;
        lines22.alpha = 0;
        lines23.alpha = 0;
        lines24.alpha = 0;
    }
    
    
    if ([space188.titleLabel.text isEqualToString:@"."]){
        
    }else{
        lines25.alpha = 0;
        lines26.alpha = 0;
        lines27.alpha = 0;
        lines28.alpha = 0;
    }
    
    
    if ([space189.titleLabel.text isEqualToString:@"."]){
        
    }else{
        lines29.alpha = 0;
        lines30.alpha = 0;
        lines31.alpha = 0;
        lines32.alpha = 0;
    }
    
    
    if ([space190.titleLabel.text isEqualToString:@"."]){
        
    }else{
        lines33.alpha = 0;
        lines34.alpha = 0;
        lines35.alpha = 0;
        lines36.alpha = 0;
    }
    
    
    hh = 0;
    ii = 1;
    jj = 2;
    cbig = 0;
    kk = 0;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && hh%3 == 0) {
            cbig = floor(jj/9);
            cbigb = [big objectAtIndex:cbig];
            if ([cbigb.titleLabel.text isEqualToString:@"."]){
                while (kk <= 80) {
                    going4 = [buttons objectAtIndex:kk];
                    if (CGRectIntersectsRect(cbigb.frame, going4.frame)) {
                        [going4 setTitle:@"S" forState:UIControlStateNormal];
                    }
                    kk++;
                }
                [cbigb setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [cbigb setTitle:@"O" forState:UIControlStateNormal];
                [cbigb setHidden:NO];
            }}
        hh++;
        ii++;
        jj++;
    }
    
    
    
    
    hh = 0;
    ii = 1;
    jj = 2;
    cbig = 0;
    kk = 0;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && hh%3 == 0) {
            cbig = floor(jj/9);
            cbigb = [big objectAtIndex:cbig];
            if ([cbigb.titleLabel.text isEqualToString:@"."]){
                while (kk <= 80) {
                    going4 = [buttons objectAtIndex:kk];
                    if (CGRectIntersectsRect(cbigb.frame, going4.frame)) {
                        [going4 setTitle:@"S" forState:UIControlStateNormal];
                    }
                    kk++;
                }
                [cbigb setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
                [cbigb setTitle:@"X" forState:UIControlStateNormal];
                [cbigb setHidden:NO];
            }}
        hh++;
        ii++;
        jj++;
    }
    
    
    
    
    
    
    hh = 0;
    ii = 4;
    jj = 8;
    cbig = 0;
    kk = 0;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && hh%9 == 0) {
            cbig = floor(jj/9);
            cbigb = [big objectAtIndex:cbig];
            if ([cbigb.titleLabel.text isEqualToString:@"."]){
                while (kk <= 80) {
                    going4 = [buttons objectAtIndex:kk];
                    if (CGRectIntersectsRect(cbigb.frame, going4.frame)) {
                        [going4 setTitle:@"S" forState:UIControlStateNormal];
                    }
                    kk++;
                }
                [cbigb setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [cbigb setTitle:@"O" forState:UIControlStateNormal];
                [cbigb setHidden:NO];
            }}
        hh++;
        ii++;
        jj++;
    }
    
    
    
    hh = 0;
    ii = 4;
    jj = 8;
    cbig = 0;
    kk = 0;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && hh%9 == 0) {
            cbig = floor(jj/9);
            cbigb = [big objectAtIndex:cbig];
            if ([cbigb.titleLabel.text isEqualToString:@"."]){
                while (kk <= 80) {
                    going4 = [buttons objectAtIndex:kk];
                    if (CGRectIntersectsRect(cbigb.frame, going4.frame)) {
                        [going4 setTitle:@"S" forState:UIControlStateNormal];
                    }
                    kk++;
                }
                [cbigb setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
                [cbigb setTitle:@"X" forState:UIControlStateNormal];
                [cbigb setHidden:NO];
            }}
        hh++;
        ii++;
        jj++;
    }
    
    
    
    hh = 2;
    ii = 4;
    jj = 6;
    cbig = 0;
    kk = 0;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && (hh-2)%9 == 0) {
            cbig = floor(jj/9);
            cbigb = [big objectAtIndex:cbig];
            if ([cbigb.titleLabel.text isEqualToString:@"."]){
                while (kk <= 80) {
                    going4 = [buttons objectAtIndex:kk];
                    if (CGRectIntersectsRect(cbigb.frame, going4.frame)) {
                        [going4 setTitle:@"S" forState:UIControlStateNormal];
                    }
                    kk++;
                }
                [cbigb setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
                [cbigb setTitle:@"X" forState:UIControlStateNormal];
                [cbigb setHidden:NO];
            }}
        hh++;
        ii++;
        jj++;
    }
    
    
    
    hh = 2;
    ii = 4;
    jj = 6;
    cbig = 0;
    kk = 0;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && (hh-2)%9 == 0) {
            cbig = floor(jj/9);
            cbigb = [big objectAtIndex:cbig];
            if ([cbigb.titleLabel.text isEqualToString:@"."]){
                while (kk <= 80) {
                    going4 = [buttons objectAtIndex:kk];
                    if (CGRectIntersectsRect(cbigb.frame, going4.frame)) {
                        [going4 setTitle:@"S" forState:UIControlStateNormal];
                    }
                    kk++;
                }
                [cbigb setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [cbigb setTitle:@"O" forState:UIControlStateNormal];
                [cbigb setHidden:NO];
            }}
        hh++;
        ii++;
        jj++;
    }
    
    
    
    
    hh = 0;
    ii = 3;
    jj = 6;
    cbig = 0;
    kk = 0;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && hh%9 == 0) {
            cbig = floor(jj/9);
            cbigb = [big objectAtIndex:cbig];
            if ([cbigb.titleLabel.text isEqualToString:@"."]){
                while (kk <= 80) {
                    going4 = [buttons objectAtIndex:kk];
                    if (CGRectIntersectsRect(cbigb.frame, going4.frame)) {
                        [going4 setTitle:@"S" forState:UIControlStateNormal];
                    }
                    kk++;
                }
                [cbigb setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
                [cbigb setTitle:@"X" forState:UIControlStateNormal];
                [cbigb setHidden:NO];
            }}
        hh++;
        ii++;
        jj++;
    }
    
    
    
    hh = 0;
    ii = 3;
    jj = 6;
    cbig = 0;
    kk = 0;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && hh%9 == 0) {
            cbig = floor(jj/9);
            cbigb = [big objectAtIndex:cbig];
            if ([cbigb.titleLabel.text isEqualToString:@"."]){
                while (kk <= 80) {
                    going4 = [buttons objectAtIndex:kk];
                    if (CGRectIntersectsRect(cbigb.frame, going4.frame)) {
                        [going4 setTitle:@"S" forState:UIControlStateNormal];
                    }
                    kk++;
                }
                [cbigb setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [cbigb setTitle:@"O" forState:UIControlStateNormal];
                [cbigb setHidden:NO];
            }}
        hh++;
        ii++;
        jj++;
    }
    
    
    
    
    hh = 1;
    ii = 4;
    jj = 7;
    cbig = 0;
    kk = 0;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && (hh-1)%9 == 0) {
            cbig = floor(jj/9);
            cbigb = [big objectAtIndex:cbig];
            if ([cbigb.titleLabel.text isEqualToString:@"."]){
                while (kk <= 80) {
                    going4 = [buttons objectAtIndex:kk];
                    if (CGRectIntersectsRect(cbigb.frame, going4.frame)) {
                        [going4 setTitle:@"S" forState:UIControlStateNormal];
                    }
                    kk++;
                }
                [cbigb setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
                [cbigb setTitle:@"X" forState:UIControlStateNormal];
                [cbigb setHidden:NO];
            }}
        hh++;
        ii++;
        jj++;
    }
    
    
    
    hh = 1;
    ii = 4;
    jj = 7;
    cbig = 0;
    kk = 0;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && (hh-1)%9 == 0) {
            cbig = floor(jj/9);
            cbigb = [big objectAtIndex:cbig];
            if ([cbigb.titleLabel.text isEqualToString:@"."]){
                while (kk <= 80) {
                    going4 = [buttons objectAtIndex:kk];
                    if (CGRectIntersectsRect(cbigb.frame, going4.frame)) {
                        [going4 setTitle:@"S" forState:UIControlStateNormal];
                    }
                    kk++;
                }
                [cbigb setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [cbigb setTitle:@"O" forState:UIControlStateNormal];
                [cbigb setHidden:NO];
            }}
        hh++;
        ii++;
        jj++;
    }
    
    
    
    
    hh = 2;
    ii = 5;
    jj = 8;
    cbig = 0;
    kk = 0;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && (hh-2)%9 == 0) {
            cbig = floor(jj/9);
            cbigb = [big objectAtIndex:cbig];
            if ([cbigb.titleLabel.text isEqualToString:@"."]){
                while (kk <= 80) {
                    going4 = [buttons objectAtIndex:kk];
                    if (CGRectIntersectsRect(cbigb.frame, going4.frame)) {
                        [going4 setTitle:@"S" forState:UIControlStateNormal];
                    }
                    kk++;
                }
                [cbigb setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
                [cbigb setTitle:@"X" forState:UIControlStateNormal];
                [cbigb setHidden:NO];
            }}
        hh++;
        ii++;
        jj++;
    }
    
    
    
    
    hh = 2;
    ii = 5;
    jj = 8;
    cbig = 0;
    kk = 0;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && (hh-2)%9 == 0) {
            cbig = floor(jj/9);
            cbigb = [big objectAtIndex:cbig];
            if ([cbigb.titleLabel.text isEqualToString:@"."]){
                while (kk <= 80) {
                    going4 = [buttons objectAtIndex:kk];
                    if (CGRectIntersectsRect(cbigb.frame, going4.frame)) {
                        [going4 setTitle:@"S" forState:UIControlStateNormal];
                    }
                    kk++;
                }
                [cbigb setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [cbigb setTitle:@"O" forState:UIControlStateNormal];
                [cbigb setHidden:NO];
            }}
        hh++;
        ii++;
        jj++;
    }
    
    
    //////////////////////////////////////
    
    
    hh = 0;
    ii = 1;
    jj = 2;
    y1 = 3;
    y2 = 4;
    y3 = 5;
    y4 = 6;
    y5 = 7;
    y6 = 8;
    
    
    while(y6 <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        going4 = [buttons objectAtIndex:y1];
        going5 = [buttons objectAtIndex:y2];
        going6 = [buttons objectAtIndex:y3];
        going7 = [buttons objectAtIndex:y4];
        going8 = [buttons objectAtIndex:y5];
        going9 = [buttons objectAtIndex:y6];
        
        if (hh%9 == 0){
            if ([going.titleLabel.text isEqualToString:@"."] || [going2.titleLabel.text isEqualToString:@"."] || [going3.titleLabel.text isEqualToString:@"."] || [going4.titleLabel.text isEqualToString:@"."] || [going5.titleLabel.text isEqualToString:@"."] || [going6.titleLabel.text isEqualToString:@"."] || [going7.titleLabel.text isEqualToString:@"."] || [going8.titleLabel.text isEqualToString:@"."] || [going9.titleLabel.text isEqualToString:@"."]) {
                
            }else{
                
                if ([going.titleLabel.text isEqualToString:@"S"] || [going2.titleLabel.text isEqualToString:@"S"] || [going3.titleLabel.text isEqualToString:@"S"] || [going4.titleLabel.text isEqualToString:@"S"] || [going5.titleLabel.text isEqualToString:@"S"] || [going6.titleLabel.text isEqualToString:@"S"] || [going7.titleLabel.text isEqualToString:@"S"] || [going8.titleLabel.text isEqualToString:@"S"] || [going9.titleLabel.text isEqualToString:@"S"]){
                }else{
                    [going setTitle:@"." forState:UIControlStateNormal];
                    [going2 setTitle:@"." forState:UIControlStateNormal];
                    [going3 setTitle:@"." forState:UIControlStateNormal];
                    [going4 setTitle:@"." forState:UIControlStateNormal];
                    [going5 setTitle:@"." forState:UIControlStateNormal];
                    [going6 setTitle:@"." forState:UIControlStateNormal];
                    [going7 setTitle:@"." forState:UIControlStateNormal];
                    [going8 setTitle:@"." forState:UIControlStateNormal];
                    [going9 setTitle:@"." forState:UIControlStateNormal];
                    
                    [going setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
                    [going2 setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
                    [going3 setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
                    [going4 setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
                    [going5 setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
                    [going6 setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
                    [going7 setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
                    [going8 setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
                    [going9 setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
                    
                }
            }
        }
        hh++;
        ii++;
        jj++;
        y1++;
        y2++;
        y3++;
        y4++;
        y5++;
        y6++;
    }
    
    
    aaa = 0;
    label.alpha = 1;
    
    while (aaa <= 80) {
        abc = [buttons objectAtIndex:aaa];
        if ([abc.titleLabel.text isEqualToString:@"S"]){
            abc.alpha = 0;
        }
        aaa++;
    }
    
    
    
    if ([space182.titleLabel.text isEqualToString:@"X"] && [space183.titleLabel.text isEqualToString:@"X"] && [space184.titleLabel.text isEqualToString:@"X"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER X WINS !"] message:[NSString stringWithFormat:@"Player O, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
        xwins++;
        [self saveScoreX];
        games++;
        [self saveScoreG];
    }
    
    if ([space185.titleLabel.text isEqualToString:@"X"] && [space186.titleLabel.text isEqualToString:@"X"] && [space187.titleLabel.text isEqualToString:@"X"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER X WINS !"] message:[NSString stringWithFormat:@"Player O, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
        xwins++;
        [self saveScoreX];
        games++;
        [self saveScoreG];
    }
    
    if ([space188.titleLabel.text isEqualToString:@"X"] && [space189.titleLabel.text isEqualToString:@"X"] && [space190.titleLabel.text isEqualToString:@"X"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER X WINS !"] message:[NSString stringWithFormat:@"Player O, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
        xwins++;
        [self saveScoreX];
        games++;
        [self saveScoreG];
    }
    
    if ([space182.titleLabel.text isEqualToString:@"X"] && [space186.titleLabel.text isEqualToString:@"X"] && [space190.titleLabel.text isEqualToString:@"X"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER X WINS !"] message:[NSString stringWithFormat:@"Player O, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
        xwins++;
        [self saveScoreX];
        games++;
        [self saveScoreG];
    }
    
    if ([space184.titleLabel.text isEqualToString:@"X"] && [space186.titleLabel.text isEqualToString:@"X"] && [space188.titleLabel.text isEqualToString:@"X"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER X WINS !"] message:[NSString stringWithFormat:@"Player O, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
        xwins++;
        [self saveScoreX];
        games++;
        [self saveScoreG];
    }
    
    if ([space182.titleLabel.text isEqualToString:@"X"] && [space185.titleLabel.text isEqualToString:@"X"] && [space188.titleLabel.text isEqualToString:@"X"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER X WINS !"] message:[NSString stringWithFormat:@"Player O, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
        xwins++;
        [self saveScoreX];
        games++;
        [self saveScoreG];
    }
    
    if ([space183.titleLabel.text isEqualToString:@"X"] && [space186.titleLabel.text isEqualToString:@"X"] && [space189.titleLabel.text isEqualToString:@"X"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER X WINS !"] message:[NSString stringWithFormat:@"Player O, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;xwins++;
        [self saveScoreX];
        games++;
        [self saveScoreG];
    }
    
    if ([space184.titleLabel.text isEqualToString:@"X"] && [space187.titleLabel.text isEqualToString:@"X"] && [space190.titleLabel.text isEqualToString:@"X"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER X WINS !"] message:[NSString stringWithFormat:@"Player O, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
        xwins++;
        [self saveScoreX];
        games++;
        [self saveScoreG];
    }
    
    ////////////////////////////////////////////////////////////////////////////////////////
    
    if ([space182.titleLabel.text isEqualToString:@"O"] && [space183.titleLabel.text isEqualToString:@"O"] && [space184.titleLabel.text isEqualToString:@"O"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER O WINS !"] message:[NSString stringWithFormat:@"Player X, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
        owins++;
        [self saveScoreO];
        games++;
        [self saveScoreG];
    }
    
    if ([space185.titleLabel.text isEqualToString:@"O"] && [space186.titleLabel.text isEqualToString:@"O"] && [space187.titleLabel.text isEqualToString:@"O"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER O WINS !"] message:[NSString stringWithFormat:@"Player X, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
        owins++;
        [self saveScoreO];
        games++;
        [self saveScoreG];
    }
    
    if ([space188.titleLabel.text isEqualToString:@"O"] && [space189.titleLabel.text isEqualToString:@"O"] && [space190.titleLabel.text isEqualToString:@"O"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER O WINS !"] message:[NSString stringWithFormat:@"Player X, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
        owins++;
        [self saveScoreO];
        games++;
        [self saveScoreG];
    }
    
    if ([space182.titleLabel.text isEqualToString:@"O"] && [space186.titleLabel.text isEqualToString:@"O"] && [space190.titleLabel.text isEqualToString:@"O"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER O WINS !"] message:[NSString stringWithFormat:@"Player X, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
        owins++;
        [self saveScoreO];
        games++;
        [self saveScoreG];
    }
    
    if ([space184.titleLabel.text isEqualToString:@"O"] && [space186.titleLabel.text isEqualToString:@"O"] && [space188.titleLabel.text isEqualToString:@"O"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER O WINS !"] message:[NSString stringWithFormat:@"Player X, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
        owins++;
        [self saveScoreO];
        games++;
        [self saveScoreG];
    }
    
    if ([space182.titleLabel.text isEqualToString:@"O"] && [space185.titleLabel.text isEqualToString:@"O"] && [space188.titleLabel.text isEqualToString:@"O"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER O WINS !"] message:[NSString stringWithFormat:@"Player X, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
        owins++;
        [self saveScoreO];
        games++;
        [self saveScoreG];
    }
    
    if ([space183.titleLabel.text isEqualToString:@"O"] && [space186.titleLabel.text isEqualToString:@"O"] && [space189.titleLabel.text isEqualToString:@"O"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER O WINS !"] message:[NSString stringWithFormat:@"Player X, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
        owins++;
        [self saveScoreO];
        games++;
        [self saveScoreG];
    }
    
    if ([space184.titleLabel.text isEqualToString:@"O"] && [space187.titleLabel.text isEqualToString:@"O"] && [space190.titleLabel.text isEqualToString:@"O"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER O WINS !"] message:[NSString stringWithFormat:@"Player X, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
        owins++;
        [self saveScoreO];
        games++;
        [self saveScoreG];
    }
    
    
    if (vvv == 0){
        if ([space182.titleLabel.text isEqualToString:@"."] || [space183.titleLabel.text isEqualToString:@"."] || [space184.titleLabel.text isEqualToString:@"."] || [space185.titleLabel.text isEqualToString:@"."] || [space186.titleLabel.text isEqualToString:@"."] || [space187.titleLabel.text isEqualToString:@"."] || [space188.titleLabel.text isEqualToString:@"."] || [space189.titleLabel.text isEqualToString:@"."] || [space190.titleLabel.text isEqualToString:@"."]){
        }else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Just a Draw"] message:[NSString stringWithFormat:@"Better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
            draws++;
            [self saveScoreD];
            games++;
            [self saveScoreG];
        }
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




-(void)nearBy2{
    
    if (lasto7 <= 3 || lasto7 >= 77) {
        lasto7 = (random() % 72) + 4;
    }
    if (lasto6 <= 3 || lasto6 >= 77) {
        lasto6 = (random() % 72) + 4;
    }
    
    if (lasto5 <= 3 || lasto5 >= 77) {
        lasto5 = (random() % 72) + 4;
    }
    
    if (lasto4 <= 3 || lasto4 >= 77) {
        lasto4 = (random() % 72) + 4;
    }
    
    if (lasto3 <= 3 || lasto3 >= 77) {
        lasto3 = (random() % 72) + 4;
    }
    
    if (lasto2 <= 3 || lasto2 >= 77) {
        lasto2 = (random() % 72) + 4;
    }
    
    counter2 = 0;
    
   while (counter2 <= 20){
            counter++;
        qwe2 = random() % 5;
        if (qwe2 == 0 || qwe2 == 1){
        asdf = 0;
        
        while (asdf <= 20){
        
             if (gone == 0){
            
            asdf++;
        qwe = 0;
        qwe = random() % 2;
        
        
        if (qwe == 0){
            rty = (random() % 3) + 1;
            jj = (int)lasto7 + (int)rty;
            if (jj <= 3 || jj >= 77) {
                jj = (random() % 72) + 4;
            }
            if (jj >= 0 && jj <= 80){
                NSLog(@"jj %d", jj);
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
                person++;
                gone = 1;
                lasto = (int)jj;
                asdf = 1000;
                counter2 = 100;
                NSLog(@"dslbflysgyf");
            }}
        }
        
        
        if (qwe == 1){
            rty = (random() % 3) + 1;
            jj = (int)lasto7 - (int)rty;
            if (jj <= 3 || jj >= 77) {
                jj = (random() % 72) + 4;
            }
            if (jj >= 0 && jj <= 80){
                NSLog(@"jj %d", jj);
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
                person++;
                gone = 1;
                lasto = (int)jj;
                asdf = 1000;
                counter2 = 100;
                NSLog(@"zzzzzzzz");
            }}
        }
             }
        }
    }
        
        
        
        
        
        if (qwe2 == 2 || qwe2 == 3){
            asdf = 0;
            
            while (asdf <= 20){
                
                if (gone == 0){
                    
                    asdf++;
                    qwe = 0;
                    qwe = random() % 2;
                    
                    
                    if (qwe == 0){
                        rty = (random() % 3) + 1;
                        jj = (int)lasto6 + (int)rty;
                        if (jj <= 3 || jj >= 77) {
                            jj = (random() % 72) + 4;
                        }
                        if (jj >= 0 && jj <= 80){
                            NSLog(@"jj %d", jj);
                            going = [buttons objectAtIndex:jj];
                            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                                [going setTitle:@"O" forState:UIControlStateNormal];
                                person++;
                                gone = 1;
                                lasto = (int)jj;
                                asdf = 1000;
                                counter2 = 100;
                                NSLog(@"dslbflysgyf");
                            }}
                    }
                    
                    
                    if (qwe == 1){
                        rty = (random() % 3) + 1;
                        jj = (int)lasto6 - (int)rty;
                        if (jj <= 3 || jj >= 77) {
                            jj = (random() % 72) + 4;
                        }
                        if (jj >= 0 && jj <= 80){
                            NSLog(@"jj %d", jj);
                            going = [buttons objectAtIndex:jj];
                            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                                [going setTitle:@"O" forState:UIControlStateNormal];
                                person++;
                                gone = 1;
                                lasto = (int)jj;
                                asdf = 1000;
                                counter2 = 100;
                                NSLog(@"zzzzzzzz");
                            }}
                    }
                }
            }
        }

        
        
        
     
        if (qwe2 == 4){
            asdf = 0;
            
            while (asdf <= 20){
                
                if (gone == 0){
                    
                    asdf++;
                    qwe = 0;
                    qwe = random() % 2;
                    
                    
                    if (qwe == 0){
                        rty = (random() % 3) + 1;
                        jj = (int)lasto5 + (int)rty;
                        if (jj <= 3 || jj >= 77) {
                            jj = (random() % 72) + 4;
                        }
                        if (jj >= 0 && jj <= 80){
                            NSLog(@"jj %d", jj);
                            going = [buttons objectAtIndex:jj];
                            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                                [going setTitle:@"O" forState:UIControlStateNormal];
                                person++;
                                gone = 1;
                                lasto = (int)jj;
                                asdf = 1000;
                                counter2 = 100;
                                NSLog(@"dslbflysgyf");
                            }}
                    }
                    
                    
                    if (qwe == 1){
                        rty = (random() % 3) + 1;
                        jj = (int)lasto5 - (int)rty;
                        if (jj <= 3 || jj >= 77) {
                            jj = (random() % 72) + 4;
                        }
                        if (jj >= 0 && jj <= 80){
                            NSLog(@"jj %d", jj);
                            going = [buttons objectAtIndex:jj];
                            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                                [going setTitle:@"O" forState:UIControlStateNormal];
                                person++;
                                gone = 1;
                                lasto = (int)jj;
                                asdf = 1000;
                                counter2 = 100;
                                NSLog(@"zzzzzzzz");
                            }}
                    }
                }
            }
        }
       
    /*   if (counter2 >= 21) {
           while (gone == 0){
               jj = random() % 81;
               going3 = [buttons objectAtIndex:jj];
               if ([going3.titleLabel.text isEqualToString:@"."]){
                   [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                   [going3 setTitle:@"O" forState:UIControlStateNormal];
                   lasto = (int)jj;
                   person++;
                   gone = 1;
                   NSLog(@"..............");
               }
           }
       } */

        
        
        
        
    }
}




-(void)nearBy{
    NSLog(@"agkhyhhhhhhhhhhhhhhhhhhhhhhhyhyhyhyhyhyhyhyhyhyhyhyhyhyhyhyhyhyh");
    qwe = 0;
    qwe = random() % 5;
    
    
    if (qwe == 0){
        rty = (random() % 3) + 1;
        jj = (int)lasto7 + (int)rty;
        if (jj <= 3 || jj >= 77) {
            jj = (random() % 72) + 4;
        }
        if (jj >= 0 && jj <= 80){
            NSLog(@"jj %d", jj);
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
                person++;
                gone = 1;
                lasto = (int)jj;
                asdf = 1000;
                counter2 = 100;
                NSLog(@"dslbflysgyf");
            }}
    }
    
    
    if (qwe == 1){
        rty = (random() % 3) + 1;
        jj = (int)lasto7 - (int)rty;
        if (jj <= 3 || jj >= 77) {
            jj = (random() % 72) + 4;
        }
        if (jj >= 0 && jj <= 80){
            NSLog(@"jj %d", jj);
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
                person++;
                gone = 1;
                lasto = (int)jj;
                asdf = 1000;
                counter2 = 100;
                NSLog(@"zzzzzzzz");
            }}
    }


    if (qwe == 2){
        rty = (random() % 3) + 1;
        jj = (int)lasto6 + (int)rty;
        if (jj <= 3 || jj >= 77) {
            jj = (random() % 72) + 4;
        }
        if (jj >= 0 && jj <= 80){
            NSLog(@"jj %d", jj);
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
                person++;
                gone = 1;
                lasto = (int)jj;
                asdf = 1000;
                counter2 = 100;
                NSLog(@"dslbflysgyf");
            }}
    }
    
    
    if (qwe == 3){
        rty = (random() % 3) + 1;
        jj = (int)lasto6 - (int)rty;
        if (jj <= 3 || jj >= 77) {
            jj = (random() % 72) + 4;
        }
        if (jj >= 0 && jj <= 80){
            NSLog(@"jj %d", jj);
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
                person++;
                gone = 1;
                lasto = (int)jj;
                asdf = 1000;
                counter2 = 100;
                NSLog(@"zzzzzzzz");
            }}
    }

    
    
    if (qwe == 4){
        rty = (random() % 3) + 1;
        jj = (int)lasto5 + (int)rty;
        if (jj <= 3 || jj >= 77) {
            jj = (random() % 72) + 4;
        }
        if (jj >= 0 && jj <= 80){
            NSLog(@"jj %d", jj);
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
                person++;
                gone = 1;
                lasto = (int)jj;
                asdf = 1000;
                counter2 = 100;
                NSLog(@"dslbflysgyf");
            }}
    }

    


}







-(void)computer{
  
    lasto7 = (int)lasto6;
    lasto6 = (int)lasto5;
    lasto5 = (int)lasto4;
    lasto4 = (int)lasto3;
    lasto3 = (int)lasto2;
    lasto2 = (int)lasto;
    NSLog(@"%d", lasto3);
    blahDos = 0;
    cbdi = 0;
    while (cbdi <= 80) {
        cbd = [buttons objectAtIndex:cbdi];
        if ([cbd.titleLabel.text isEqualToString:@"."]) {
        }else{
            blahDos++;
        }
        cbdi++;
    }
    NSLog(@"%d", blahDos);
    
    if (blahDos <= 80){
        gone = 0;
       
        
        static int level3[] = {0,3,6,1,4,7,2,5,8,0,1,2,3,4,5,6,7,8,0,4,8,2,4,6, nil};
        NSMutableArray* hello3 = [NSMutableArray arrayWithCapacity:24];
        for (aa = 0; aa < 24; aa++){
            
            [hello3 addObject:[NSNumber numberWithInt:level3[aa]]];
            bb = [hello3 objectAtIndex:aa];
            
        }
        
        for (nn = 0; nn < 24; nn+=3){
            
            zero = 0;
        
            bb = [hello3 objectAtIndex:nn];
            dd = [hello3 objectAtIndex:nn+1];
            ee = [hello3 objectAtIndex:nn+2];
            hh = bb.intValue;
            ii = dd.intValue;
            jj = ee.intValue;
        
        while(jj <= 80){
            going = [buttons objectAtIndex:hh];
            going2 = [buttons objectAtIndex:ii];
            going3 = [buttons objectAtIndex:jj];
            
            if ([going.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"."] && zero%9 == 0 && gone == 0) {
                [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going3 setTitle:@"O" forState:UIControlStateNormal];
                  lasto = (int)jj;
                person++;
                gone = 1;
            }
            
            if ([going.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"."] && zero%9 == 0 && gone == 0) {
                [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going2 setTitle:@"O" forState:UIControlStateNormal];
                lasto = (int)ii;
                person++;
                gone = 1;
            }
            
            if ([going.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && [going.titleLabel.text isEqualToString:@"."] && zero%9 == 0 && gone == 0) {
                [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going3 setTitle:@"O" forState:UIControlStateNormal];
                lasto = (int)hh;
                person++;
                gone = 1;
            }
            
            hh++;
            ii++;
            jj++;
        }
        }
        
        
        static int level4[] = {0,3,6,1,4,7,2,5,8,0,1,2,3,4,5,6,7,8,0,4,8,2,4,6, nil};
        NSMutableArray* hello4 = [NSMutableArray arrayWithCapacity:3];
        for (aa = 0; aa < 24; aa++){
            
            [hello4 addObject:[NSNumber numberWithInt:level4[aa]]];
            bb = [hello4 objectAtIndex:aa];
            
        }
        
        for (nn = 0; nn < 24; nn+=3){
            
            zero = 0;
            
            bb = [hello4 objectAtIndex:nn];
            dd = [hello4 objectAtIndex:nn+1];
            ee = [hello4 objectAtIndex:nn+2];
            hh = bb.intValue;
            ii = dd.intValue;
            jj = ee.intValue;
        
        while(jj <= 80){
            going = [buttons objectAtIndex:hh];
            going2 = [buttons objectAtIndex:ii];
            going3 = [buttons objectAtIndex:jj];
            
            if ([going.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"."] && zero%9 == 0 && gone == 0) {
                [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going2 setTitle:@"O" forState:UIControlStateNormal];
                  lasto = (int)ii;
                person++;
                gone = 1;
            }
            hh++;
            ii++;
            jj++;
        }
        }
        
        static int level5[] = {0,3,6,1,4,7,2,5,8,0,1,2,3,4,5,6,7,8,0,4,8,2,4,6, nil};
        NSMutableArray* hello5 = [NSMutableArray arrayWithCapacity:3];
        for (aa = 0; aa < 24; aa++){
            
            [hello5 addObject:[NSNumber numberWithInt:level5[aa]]];
            bb = [hello5 objectAtIndex:aa];
            
        }
        
        for (nn = 0; nn < 24; nn+=3){
            
            zero = 0;
            
            bb = [hello5 objectAtIndex:nn];
            dd = [hello5 objectAtIndex:nn+1];
            ee = [hello5 objectAtIndex:nn+2];
            hh = bb.intValue;
            ii = dd.intValue;
            jj = ee.intValue;
          
        while(jj <= 80){
            going = [buttons objectAtIndex:hh];
            going2 = [buttons objectAtIndex:ii];
            going3 = [buttons objectAtIndex:jj];
            
            if ([going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && [going.titleLabel.text isEqualToString:@"."] && zero%9 == 0 && gone == 0) {
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
                  lasto = (int)hh;
                person++;
                gone = 1;
            }
            hh++;
            ii++;
            jj++;
        }
        }
        
        
        ///////////////////////////////////////////////////////////////////////////////
        
        static int level[] = {0, 2, 8, 1, 5, 0, 6, 8, 3, 7,2,6,8,5,7,0,2,6,1,3,0,2,8,1,4,0,2,8,5,4,0,6,8,7,4,0,6,8,3,4,2,6,8,4,7,2,6,8,4,5,0,2,6,1,4,0,2,6,3,4,5,7,8,2,6,4,5,7,1,3,3,4,7,1,5,4,7,8,0,1,4,7,8,0,6,4,7,8,6,1,4,6,7,1,2,2,4,7,6,1,0,4,6,3,2,2,4,8,5,0,2,4,8,5,6,4,6,8,0,2,2,4,8,0,6,4,6,8,0,7,4,6,8,2,7,3,4,8,0,5,4,5,8,3,2,4,5,8,0,2,4,5,8,0,3,3,6,8,7,0,3,4,6,0,2,3,4,6,0,5,3,4,6,2,5,2,3,6,0,4,0,3,8,4,6,0,7,8,4,6,1,2,6,0,4,0,1,8,2,4,0,5,8,2,4,5,6,8,2,7, nil};
        NSMutableArray* hello = [NSMutableArray arrayWithCapacity:3];
        for (aa = 0; aa < 210; aa++){
            
            [hello addObject:[NSNumber numberWithInt:level[aa]]];
            bb = [hello objectAtIndex:aa];
          
        }
        
        for (nn = 0; nn < 210; nn+=5){
            
            zero = 0;
        bb = [hello objectAtIndex:nn];
            dd = [hello objectAtIndex:nn+1];
            ee = [hello objectAtIndex:nn+2];
            ff = [hello objectAtIndex:nn+3];
            ggg = [hello objectAtIndex:nn+4];
        hh = bb.intValue;
        ii = dd.intValue;
        jj = ee.intValue;
        yu = ff.intValue;
        io = ggg.intValue;
        
        while(jj <= 80){
            going = [buttons objectAtIndex:hh];
            going2 = [buttons objectAtIndex:ii];
            going3 = [buttons objectAtIndex:jj];
            going20 = [buttons objectAtIndex:yu];
            going21 = [buttons objectAtIndex:io];
            
            if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"]  && [going20.titleLabel.text isEqualToString:@"."] && [going21.titleLabel.text isEqualToString:@"."] && zero%9 == 0 && gone == 0) {
                blank1 = (int)yu;
                blank2 = (int)io;
                [self block];
                if (gone == 0){
                [self nearBy2];
                }
                jj = 81;
            }
            hh++;
            ii++;
            jj++;
            yu++;
            io++;
            zero++;
        }
        }

        
        static int level2[] = {1,2,5,0,8,0,1,3,2,6,3,6,7,0,8,1,3,4,5,7,1,2,4,0,7,1,2,4,0,6,1,2,4,6,7,0,1,4,7,8,0,1,4,2,8,0,1,4,2,7,4,6,7,2,8,4,6,7,1,8,2,4,5,3,8,2,4,5,6,8,2,4,5,3,6,1,4,6,2,7,0,4,7,1,8,0,4,2,1,8,0,4,2,1,6,0,4,2,6,8,0,4,6,3,8,0,4,6,2,8,3,4,2,5,6,0,3,4,6,8,0,3,4,5,6,0,3,4,5,8,2,5,6,4,8,0,4,5,3,8, nil};
        NSMutableArray* hello2 = [NSMutableArray arrayWithCapacity:3];
        for (aa = 0; aa < 140; aa++){
            
            [hello2 addObject:[NSNumber numberWithInt:level2[aa]]];
            bb = [hello2 objectAtIndex:aa];
          
        }
        
        for (nn = 0; nn < 140; nn+=5){
            
            zero = 0;
            bb = [hello2 objectAtIndex:nn];
            dd = [hello2 objectAtIndex:nn+1];
            ee = [hello2 objectAtIndex:nn+2];
            ff = [hello2 objectAtIndex:nn+3];
            ggg = [hello2 objectAtIndex:nn+4];
            hh = bb.intValue;
            ii = dd.intValue;
            jj = ee.intValue;
            yu = ff.intValue;
            io = ggg.intValue;
            
            while(io <= 80){
                going = [buttons objectAtIndex:hh];
                going2 = [buttons objectAtIndex:ii];
                going3 = [buttons objectAtIndex:jj];
                going20 = [buttons objectAtIndex:yu];
                going21 = [buttons objectAtIndex:io];
                
                if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"]  && [going20.titleLabel.text isEqualToString:@"."] && [going21.titleLabel.text isEqualToString:@"."] && zero%9 == 0 && gone == 0) {
                    blank1 = (int)yu;
                    blank2 = (int)io;
                    [self block];
                    if (gone == 0){
                        [self nearBy2];
                    }
                    io = 81;
                }
                hh++;
                ii++;
                jj++;
                yu++;
                io++;
                zero++;
            }
        }

        
        
        ///////////////////////////////////////////////////////////////////////////////
        
        qwe6 = random() % 50;
        if (qwe6 != 0){
           [self block]; 
        }
        
        
        
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 0){
            jj = (int)gos + 4;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1 || ii == 2){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                      lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 2){
            jj = (int)gos + 2;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1 || ii == 2){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                      lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 6){
            jj = (int)gos - 2;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1 || ii == 2){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                      lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 8){
            jj = (int)gos - 4;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1 || ii == 2){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                      lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 0){
            jj = (int)gos + 1;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1 || ii == 2){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 2){
            jj = (int)gos - 1;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1 || ii == 2){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 6){
            jj = (int)gos + 1;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1 || ii == 2){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 8){
            jj = (int)gos - 1;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1 || ii == 2){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }

        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 2){
            jj = (int)gos + 1;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1 || ii == 2){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 6){
            jj = (int)gos - 1;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1 || ii == 2){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 1){
            jj = (int)gos + 3;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii != 0){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 3){
            jj = (int)gos + 1;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii != 0){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 5){
            jj = (int)gos - 1;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii != 0){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 7){
            jj = (int)gos - 3;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii != 0){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 4){
            jj = (int)gos - 4;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 4){
            jj = (int)gos - 2;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 4){
            jj = (int)gos + 2;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 4){
            jj = (int)gos + 4;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 4){
            jj = (int)gos - 3;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 4){
            jj = (int)gos - 1;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 4){
            jj = (int)gos - 4;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 4){
            jj = (int)gos + 1;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        ii = 0;
        ii = random() % 5;
        if (gos%9 == 4){
            jj = (int)gos + 3;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1){
                    [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                    [going setTitle:@"O" forState:UIControlStateNormal];
                    lasto = (int)jj;
                    person++;
                    gone = 1;
                }
            }
        }
        
        
        
        
        
      //  qwe3 = random %
        
        counter = 0;
        qwe3 = 0;
        buttonsA = 0;
        
        while (counter <= 80){
            
            going = [buttons objectAtIndex:counter];
            if (counter%9 == 0 || counter%9 == 2 || counter%9 == 6 || counter%9 == 8){
                if ([going.titleLabel.text isEqualToString:@"."]) {
                    qwe3++;
                }
            }
            if ([going.titleLabel.text isEqualToString:@"."]) {
                buttonsA++;
            }
            counter++;
        }
        
        NSLog(@"%d %d", qwe3, buttonsA);
        
         if (qwe3 == 0){
        while (gone == 0 && buttonsA != 0){
            jj = random() % 81;
            going3 = [buttons objectAtIndex:jj];
            if ([going3.titleLabel.text isEqualToString:@"."]){
                [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going3 setTitle:@"O" forState:UIControlStateNormal];
                lasto = (int)jj;
                person++;
                gone = 1;
                NSLog(@"..............");
            }
        }
        }

        qwe5 = random() % 5;
        if (qwe5 == 0) {
            [self nearBy];
        }
        
        
        
        ////////////////////////////////////////////
        
        bcd = 0;
        pizza = 0;
        a12345 = 0;
        bbbb = 0;
        ooo = 0;
        jj = 0;
        rrr = 0;
        
        while (bcd <= 80){
            check = [buttons objectAtIndex:bcd];
            if (CGRectIntersectsRect(check.frame, cursor.frame)) {
                pizza = 1;
            }
            
            if (gone == 0 && bcd == 80 && pizza == 1 && blah == 1) {
                
                while (a12345 == 0){
                    
                    if ([going3.titleLabel.text isEqualToString:@"."]){
                        
                        while (ooo <= 1) {
                            
                            strategy = random() % 19;
                            
                            if (strategy == 0) {
                                bbbb = (int)gos + 3;
                                if (bbbb <=77){
                                    cccc = [buttons objectAtIndex:bbbb];
                                    if ([cccc.titleLabel.text isEqualToString:@"."]){
                                        jj = (int)gos + 3;
                                        going3 = [buttons objectAtIndex:jj];
                                        ooo = 5;
                                        rrr = 1;
                                    }
                                }
                            }
                            
                            if (strategy == 2) {
                                bbbb = (int)gos - 3;
                                if (bbbb >= 3){
                                    cccc = [buttons objectAtIndex:bbbb];
                                    if ([cccc.titleLabel.text isEqualToString:@"."]){
                                        jj = (int)gos - 3;
                                        going3 = [buttons objectAtIndex:jj];
                                        ooo = 5;
                                        rrr = 1;
                                    }
                                }
                            }
                            
                            if (strategy == 4  || strategy == 1 || strategy == 3) {
                                bbbb = (int)gos - 2;
                                if (bbbb >= 2){
                                    cccc = [buttons objectAtIndex:bbbb];
                                    if ([cccc.titleLabel.text isEqualToString:@"."]){
                                        jj = (int)gos - 2;
                                        going3 = [buttons objectAtIndex:jj];
                                        ooo = 5;
                                        rrr = 1;
                                    }
                                }
                            }
                            
                            if (strategy == 6 || strategy == 7 || strategy == 8  || strategy == 14) {
                                bbbb = (int)gos - 1;
                                if (bbbb >= 1){
                                    cccc = [buttons objectAtIndex:bbbb];
                                    if ([cccc.titleLabel.text isEqualToString:@"."]){
                                        jj = (int)gos - 1;
                                        going3 = [buttons objectAtIndex:jj];
                                        ooo = 5;
                                        rrr = 1;
                                    }
                                }
                            }
                            
                            
                            if (strategy == 9 || strategy == 10 || strategy == 11  || strategy == 15) {
                                bbbb = (int)gos + 1;
                                if (bbbb <=79){
                                    cccc = [buttons objectAtIndex:bbbb];
                                    if ([cccc.titleLabel.text isEqualToString:@"."]){
                                        jj = (int)gos + 1;
                                        going3 = [buttons objectAtIndex:jj];
                                        ooo = 5;
                                        rrr = 1;
                                    }
                                }
                            }
                            
                            if (strategy == 12 || strategy == 13  || strategy == 5) {
                                bbbb = (int)gos + 2;
                                if (bbbb <=78){
                                    cccc = [buttons objectAtIndex:bbbb];
                                    if ([cccc.titleLabel.text isEqualToString:@"."]){
                                        jj = (int)gos + 2;
                                        going3 = [buttons objectAtIndex:jj];
                                        ooo = 5;
                                        rrr = 1;
                                    }
                                }
                            }
                            
                            ooo++;
                            
                        }
                        
                        sss = random() % 5;
                        uuu = 0;
                        if (rrr == 1 || sss == 0){
                            [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                            [going3 setTitle:@"O" forState:UIControlStateNormal];
                              lasto = (int)jj;
                            person++;
                            a12345 = 1;
                        }
                        
                        if (rrr == 0 && sss != 0){
                            ppp = 0;
                            
                            while (ppp == 0){
                                jj = random() % 81;
                                going3 = [buttons objectAtIndex:jj];
                                if ((jj%9 ==0 || jj%9 == 2 || jj%9 ==6 || jj%9 == 8) && [going3.titleLabel.text isEqualToString:@"."]){
                                    [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                                    [going3 setTitle:@"O" forState:UIControlStateNormal];
                                      lasto = (int)jj;
                                    person++;
                                    a12345 = 1;
                                    ppp = 1;
                                }else{
                                     while (uuu >= 2000){
                                         NSLog(@"..........");
                                    if (ppp == 0 && [going3.titleLabel.text isEqualToString:@"."] && gone == 0) {
                                        [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                                        [going3 setTitle:@"O" forState:UIControlStateNormal];
                                          lasto = (int)jj;
                                        person++;
                                        a12345 = 1;
                                        ppp = 1;
                                        uuu = 2002;
                                        }
                                         uuu++;
                                    }
                                }}
                            uuu++;
                        }
                        /*
                         ppp = 0;
                         qqq = 0;
                         
                         while (ppp <=80){
                         jj = random() % 81;
                         going3 = [buttons objectAtIndex:jj];
                         if (ppp <= 79){
                         if (a12345 == 0 && [going3.titleLabel.text isEqualToString:@"."]){
                         if (jj%9 == 0 || jj%9 ==1 || jj%9 == 3 || jj%9 == 7){
                         [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                         [going3 setTitle:@"O" forState:UIControlStateNormal];
                         person++;
                         a12345 = 1;
                         }
                         }
                         }else{
                         while (qqq <=80){
                         jj = random() % 81;
                         going3 = [buttons objectAtIndex:jj];
                         if (a12345 == 0 && [going3.titleLabel.text isEqualToString:@"."]){
                         [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                         [going3 setTitle:@"O" forState:UIControlStateNormal];
                         person++;
                         a12345 = 1;
                         }
                         qqq++;
                         }
                         
                         }
                         ppp++;
                         }*/
                        
                        
                    }else{
                        jj = random() % 81;
                        going3 = [buttons objectAtIndex:jj];
                        
                    }
                }
            }
            bcd++;
        }
    }else{
        label.alpha = 0;
    }
    
    
    /*else{
     while (bcd <= 80){
     check = [buttons objectAtIndex:bcd];
     if (CGRectIntersectsRect(check.frame, cursor.frame)) {
     pizza = 1;
     }
     
     if (gone == 0 && bcd == 80 && pizza == 1 && blah == 1) {
     jj = (int)gos+3;
     going3 = [buttons objectAtIndex:jj];
     while (a12345 == 0){
     if ([going3.titleLabel.text isEqualToString:@"."]){
     [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
     [going3 setTitle:@"O" forState:UIControlStateNormal];
     person++;
     blahDos++;
     a12345 = 1;
     }
     }
     }
     bcd++;
     }
     
     }*/
    
    
    
}


-(IBAction)reset1{
    
    cover.alpha = 0;
    label.textColor = [UIColor redColor];
    label.text = @"PLAYER X, its your turn !!!!!";
    twoPlayer = 1;
    win = 0;
    person = 0;
    [reset1 setHidden:YES];
    [reset2 setHidden:YES];
    [reset3 setHidden:NO];
    
    aaa = 0;
    label.alpha = 1;
    
    while (aaa <= 80) {
        abc = [buttons objectAtIndex:aaa];
        abc.enabled = NO;
        abc.enabled = false;
        [abc setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
        [abc setTitle:@"." forState:UIControlStateNormal];
        
        aaa++;
    }
    aaa = 0;
    while (aaa <= 8) {
        abc = [big objectAtIndex:aaa];
        [abc setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
        [abc setTitle:@"." forState:UIControlStateNormal];
        [abc setHidden:YES];
        aaa++;
    }
    
    
    
}


-(IBAction)reset2{
    
    cover.alpha = 0;
    label.textColor = [UIColor redColor];
    label.text = @"PLAYER X, its your turn !!!!!";
    twoPlayer = 2;
    win = 0;
    person = 0;
    [reset1 setHidden:YES];
    [reset2 setHidden:YES];
    [reset3 setHidden:NO];
    
    aaa = 0;
    label.alpha = 1;
    
    while (aaa <= 80) {
        abc = [buttons objectAtIndex:aaa];
        [abc setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
        [abc setTitle:@"." forState:UIControlStateNormal];
        aaa++;
    }
    aaa = 0;
    while (aaa <= 8) {
        abc = [big objectAtIndex:aaa];
        [abc setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
        [abc setTitle:@"." forState:UIControlStateNormal];
        [abc setHidden:YES];
        aaa++;
    }
    
}

-(IBAction)reset3{
    
    blank1 = -1;
    blank2 = -1;
    lasto = 5;
    lasto2 = 6;
    lasto3 = 7;
    lasto4 = 8;
    lasto5 = 9;
    lasto6 = 10;
    lasto7 = 11;
    cover.alpha = .8;
    label.textColor = [UIColor blackColor];
    label.text = @"I'll tell you whose turn it is   :D";
    win = 0;
    person = 0;
    [reset1 setHidden:NO];
    [reset2 setHidden:NO];
    [reset3 setHidden:YES];
    twoPlayer = 0;
    vvv = 0;
    
    aaa = 0;
    label.alpha = 1;
    
    while (aaa <= 80) {
        abc = [buttons objectAtIndex:aaa];
        [abc setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
        [abc setTitle:@"." forState:UIControlStateNormal];
        abc.titleLabel.font = [UIFont systemFontOfSize:25];
        [abc setBackgroundColor:[UIColor clearColor]];
        //[abc setBackgroundImage:[UIImage imageNamed:@"blank.png"] forState:UIControlStateNormal];
        abc.alpha = 1;
        aaa++;
    }
    aaa = 0;
    while (aaa <= 8) {
        abc = [big objectAtIndex:aaa];
        [abc setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
        [abc setTitle:@"." forState:UIControlStateNormal];
        abc.titleLabel.font = [UIFont systemFontOfSize:100];
        [abc setBackgroundImage:[UIImage imageNamed:@"blank.png"] forState:UIControlStateNormal];
        [abc setHidden:YES];
        [abc setBackgroundColor:[UIColor clearColor]];
        aaa++;
    }
    lines1.alpha = 1;
    lines2.alpha = 1;
    lines3.alpha = 1;
    lines4.alpha = 1;
    lines5.alpha = 1;
    lines6.alpha = 1;
    lines7.alpha = 1;
    lines8.alpha = 1;
    lines9.alpha = 1;
    lines10.alpha = 1;
    lines11.alpha = 1;
    lines12.alpha = 1;
    lines13.alpha = 1;
    lines14.alpha = 1;
    lines15.alpha = 1;
    lines16.alpha = 1;
    lines17.alpha = 1;
    lines18.alpha = 1;
    lines19.alpha = 1;
    lines20.alpha = 1;
    lines21.alpha = 1;
    lines22.alpha = 1;
    lines23.alpha = 1;
    lines24.alpha = 1;
    lines25.alpha = 1;
    lines26.alpha = 1;
    lines27.alpha = 1;
    lines28.alpha = 1;
    lines29.alpha = 1;
    lines30.alpha = 1;
    lines31.alpha = 1;
    lines32.alpha = 1;
    lines33.alpha = 1;
    lines34.alpha = 1;
    lines35.alpha = 1;
    lines36.alpha = 1;
    
}


-(void)reset4{
    
    play.alpha = 0;
    cover.alpha = .8;
    label.textColor = [UIColor blackColor];
    label.text = @"I'll tell you whose turn it is   :D";
    win = 0;
    person = 0;
    [reset1 setHidden:NO];
    [reset2 setHidden:NO];
    [reset3 setHidden:YES];
    twoPlayer = 0;
    vvv = 0;
    
    aaa = 0;
    label.alpha = 1;
    
    while (aaa <= 80) {
        abc = [buttons objectAtIndex:aaa];
        [abc setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
        [abc setTitle:@"." forState:UIControlStateNormal];
        abc.titleLabel.font = [UIFont systemFontOfSize:25];
        [abc setBackgroundColor:[UIColor clearColor]];
        //[abc setBackgroundImage:[UIImage imageNamed:@"blank.png"] forState:UIControlStateNormal];
        abc.alpha = 1;
        aaa++;
    }
    aaa = 0;
    while (aaa <= 8) {
        abc = [big objectAtIndex:aaa];
        [abc setTitleColor:[UIColor clearColor] forState:UIControlStateNormal];
        [abc setTitle:@"." forState:UIControlStateNormal];
        abc.titleLabel.font = [UIFont systemFontOfSize:100];
        [abc setBackgroundImage:[UIImage imageNamed:@"blank.png"] forState:UIControlStateNormal];
        [abc setHidden:YES];
        [abc setBackgroundColor:[UIColor clearColor]];
        aaa++;
    }
    lines1.alpha = 1;
    lines2.alpha = 1;
    lines3.alpha = 1;
    lines4.alpha = 1;
    lines5.alpha = 1;
    lines6.alpha = 1;
    lines7.alpha = 1;
    lines8.alpha = 1;
    lines9.alpha = 1;
    lines10.alpha = 1;
    lines11.alpha = 1;
    lines12.alpha = 1;
    lines13.alpha = 1;
    lines14.alpha = 1;
    lines15.alpha = 1;
    lines16.alpha = 1;
    lines17.alpha = 1;
    lines18.alpha = 1;
    lines19.alpha = 1;
    lines20.alpha = 1;
    lines21.alpha = 1;
    lines22.alpha = 1;
    lines23.alpha = 1;
    lines24.alpha = 1;
    lines25.alpha = 1;
    lines26.alpha = 1;
    lines27.alpha = 1;
    lines28.alpha = 1;
    lines29.alpha = 1;
    lines30.alpha = 1;
    lines31.alpha = 1;
    lines32.alpha = 1;
    lines33.alpha = 1;
    lines34.alpha = 1;
    lines35.alpha = 1;
    lines36.alpha = 1;
    [play setHidden:YES];
    
}






/////////////////////////////////////////////////////////////////////////////////////////////////


-(void)subScore{
    GKScore *scoreReporter = [[GKScore alloc] initWithCategory:@"12345678910111213"];
    scoreReporter.value = xwins;
    
    [scoreReporter reportScoreWithCompletionHandler:^(NSError *error) {
        if (error != nil)
        {
            
            
        }
        else {
            
            
        }
    }];
}


-(void)subScore2{
    GKScore *scoreReporter = [[GKScore alloc] initWithCategory:@"1234567891011121314"];
    scoreReporter.value = owins;
    
    [scoreReporter reportScoreWithCompletionHandler:^(NSError *error) {
        if (error != nil)
        {
            
            
        }
        else {
            
            
        }
    }];
}


-(void)subScore3{
    GKScore *scoreReporter = [[GKScore alloc] initWithCategory:@"123456789101112"];
    scoreReporter.value = games;
    
    [scoreReporter reportScoreWithCompletionHandler:^(NSError *error) {
        if (error != nil)
        {
            
            
        }
        else {
            
            
        }
    }];
}
    

-(void)subScore4{
    GKScore *scoreReporter = [[GKScore alloc] initWithCategory:@"123456789101112131415"];
    scoreReporter.value = draws;
    
    [scoreReporter reportScoreWithCompletionHandler:^(NSError *error) {
        if (error != nil)
        {
            
            
        }
        else {
            
            
        }
    }];
}




-(void)saveScoreX{
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(xwins)]forKey:@"XWINS"];
}

-(void)saveScoreO{
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(owins)]forKey:@"OWINS"];
}

-(void)saveScoreG{
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(games)]forKey:@"GAMES"];
}

-(void)saveScoreD{
    [[NSUserDefaults standardUserDefaults] setObject:[NSNumber numberWithInt:(draws)]forKey:@"DRAWS"];
}

-(void)loadScore{
    xwins = [[[NSUserDefaults standardUserDefaults]objectForKey:@"XWINS"]integerValue];
    owins = [[[NSUserDefaults standardUserDefaults]objectForKey:@"OWINS"]integerValue];
    games = [[[NSUserDefaults standardUserDefaults]objectForKey:@"GAMES"]integerValue];
    draws = [[[NSUserDefaults standardUserDefaults]objectForKey:@"DRAWS"]integerValue];
}


-(void)block{
    
    hh = 0; //This is a comment. It helps other programmers figure out what you're doing!!!!!!!!!
    ii = 1;
    jj = 2;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"."] && hh%3 == 0 && gone == 0 && jj != blank1 && jj != blank2) {
            [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going3 setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)jj;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }
    
    
    hh = 0;
    ii = 1;
    jj = 2;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"."] && hh%3 == 0 && gone == 0 && ii != blank1 && ii != blank2) {
            [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going2 setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)ii;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }
    
    
    
    hh = 0;
    ii = 1;
    jj = 2;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going.titleLabel.text isEqualToString:@"."] && hh%3 == 0 && gone == 0 && hh != blank1 && hh != blank2) {
            [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)hh;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }
    
    
    
    hh = 0;
    ii = 4;
    jj = 8;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0 && jj != blank1 && jj != blank2) {
            [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going3 setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)jj;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }
    
    
    
    hh = 0;
    ii = 4;
    jj = 8;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0 && ii != blank1 && ii != blank2) {
            [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going2 setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)ii;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }
    
    
    
    hh = 0;
    ii = 4;
    jj = 8;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0 && hh != blank1 && hh != blank2) {
            [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)hh;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }
    
    
    
    hh = 2;
    ii = 4;
    jj = 6;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0 && jj != blank1 && jj != blank2) {
            [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going3 setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)jj;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }
    
    
    
    hh = 2;
    ii = 4;
    jj = 6;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0 && ii != blank1 && ii != blank2) {
            [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going2 setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)ii;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }
    
    
    
    hh = 2;
    ii = 4;
    jj = 6;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0 && hh != blank1 && hh != blank2) {
            [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)hh;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }
    
    
    
    
    hh = 0;
    ii = 3;
    jj = 6;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0 && jj != blank1 && jj != blank2) {
            [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going3 setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)jj;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }
    
    
    
    
    hh = 0;
    ii = 3;
    jj = 6;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0 && ii != blank1 && ii != blank2) {
            [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going2 setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)ii;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }
    
    
    
    
    hh = 0;
    ii = 3;
    jj = 6;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0 && hh != blank1 && hh != blank2) {
            [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)hh;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }
    
    
    
    
    
    hh = 1;
    ii = 4;
    jj = 7;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"."] && (hh-1)%9 == 0 && gone == 0 && jj != blank1 && jj != blank2) {
            [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going3 setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)jj;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }
    
    
    
    
    hh = 1;
    ii = 4;
    jj = 7;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"."] && (hh-1)%9 == 0 && gone == 0 && ii != blank1 && ii != blank2) {
            [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going2 setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)ii;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }
    
    
    
    
    hh = 1;
    ii = 4;
    jj = 7;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going.titleLabel.text isEqualToString:@"."] && (hh-1)%9 == 0 && gone == 0 && hh != blank1 && hh != blank2) {
            [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)hh;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }
    
    
    
    
    hh = 2;
    ii = 5;
    jj = 8;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0 && jj != blank1 && jj != blank2) {
            [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going3 setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)jj;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }
    
    
    
    
    hh = 2;
    ii = 5;
    jj = 8;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0 && ii != blank1 && ii != blank2) {
            [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going2 setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)ii;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }
    
    
    
    
    hh = 2;
    ii = 5;
    jj = 8;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0 && hh != blank1 && hh != blank2) {
            [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going setTitle:@"O" forState:UIControlStateNormal];
            lasto = (int)hh;
            person++;
            gone = 1;
        }
        hh++;
        ii++;
        jj++;
    }

    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
 
 
 
 
 
 */


@end
