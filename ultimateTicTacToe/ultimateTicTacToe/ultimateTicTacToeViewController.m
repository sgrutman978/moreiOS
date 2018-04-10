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
    
    buttons = [NSArray arrayWithObjects:space1, space2, space3, space4, space5, space6, space7, space8, space9, space10, space11, space12, space13, space14, space15, space16, space17, space18, space19, space120, space121, space122, space123, space124, space125, space126, space127, space128, space129, space130, space131, space132, space133, space134, space135, space136, space137, space138, space139, space140, space141, space142, space143, space144, space145, space146, space147, space148, space149, space150, space151, space152, space153, space154, space155, space156, space157, space158, space159, space160, space161, space162, space163, space164, space165, space166, space167, space168, space169, space170, space171, space172, space173, space174, space175, space176, space177, space178, space179, space180, space181, nil];
   
    big = [NSArray arrayWithObjects:space182, space183, space184, space185, space186, space187, space188, space189, space190, nil];
    
    win = 0;
    person = 0;
    
    [self loadScore];
    
    [[GKLocalPlayer localPlayer] authenticateWithCompletionHandler:^(NSError *error) {
        if (error == nil) {
            NSLog(@"Authentication Successful");
        } else {
            NSLog(@"Authentication Failed");
        }
    }];
         [self reset4];
    cover.alpha = .9;
    twoPlayer = 0;
	// Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)twitter{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/kidWithaApp"]];
}

- (IBAction)like{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://facebook.com/grutmanGames"]];
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
                    gos = gg;
                    [go setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
                    [go setTitle:@"X" forState:UIControlStateNormal];
                    blah = 1;
                     [self checkMatch];
                    if (twoPlayer == 1){
                    [self computer];
                    [self checkMatch];
                         [self checkMatch];
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






-(void)checkMatch{
    
    
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
    }
    
    if ([space185.titleLabel.text isEqualToString:@"X"] && [space186.titleLabel.text isEqualToString:@"X"] && [space187.titleLabel.text isEqualToString:@"X"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER X WINS !"] message:[NSString stringWithFormat:@"Player O, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
    }
    
    if ([space188.titleLabel.text isEqualToString:@"X"] && [space189.titleLabel.text isEqualToString:@"X"] && [space190.titleLabel.text isEqualToString:@"X"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER X WINS !"] message:[NSString stringWithFormat:@"Player O, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
    }
    
    if ([space182.titleLabel.text isEqualToString:@"X"] && [space186.titleLabel.text isEqualToString:@"X"] && [space190.titleLabel.text isEqualToString:@"X"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER X WINS !"] message:[NSString stringWithFormat:@"Player O, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
    }
    
    if ([space184.titleLabel.text isEqualToString:@"X"] && [space186.titleLabel.text isEqualToString:@"X"] && [space188.titleLabel.text isEqualToString:@"X"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER X WINS !"] message:[NSString stringWithFormat:@"Player O, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
    }
    
    if ([space182.titleLabel.text isEqualToString:@"X"] && [space185.titleLabel.text isEqualToString:@"X"] && [space188.titleLabel.text isEqualToString:@"X"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER X WINS !"] message:[NSString stringWithFormat:@"Player O, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
    }
    
    if ([space183.titleLabel.text isEqualToString:@"X"] && [space186.titleLabel.text isEqualToString:@"X"] && [space189.titleLabel.text isEqualToString:@"X"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER X WINS !"] message:[NSString stringWithFormat:@"Player O, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
    }
    
    if ([space184.titleLabel.text isEqualToString:@"X"] && [space187.titleLabel.text isEqualToString:@"X"] && [space190.titleLabel.text isEqualToString:@"X"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER X WINS !"] message:[NSString stringWithFormat:@"Player O, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
    }
    
    ////////////////////////////////////////////////////////////////////////////////////////
    
    if ([space182.titleLabel.text isEqualToString:@"O"] && [space183.titleLabel.text isEqualToString:@"O"] && [space184.titleLabel.text isEqualToString:@"O"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER O WINS !"] message:[NSString stringWithFormat:@"Player X, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
    }
    
    if ([space185.titleLabel.text isEqualToString:@"O"] && [space186.titleLabel.text isEqualToString:@"O"] && [space187.titleLabel.text isEqualToString:@"O"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER O WINS !"] message:[NSString stringWithFormat:@"Player X, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
    }
    
    if ([space188.titleLabel.text isEqualToString:@"O"] && [space189.titleLabel.text isEqualToString:@"O"] && [space190.titleLabel.text isEqualToString:@"O"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER O WINS !"] message:[NSString stringWithFormat:@"Player X, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
    }
    
    if ([space182.titleLabel.text isEqualToString:@"O"] && [space186.titleLabel.text isEqualToString:@"O"] && [space190.titleLabel.text isEqualToString:@"O"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER O WINS !"] message:[NSString stringWithFormat:@"Player X, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
    }
    
    if ([space184.titleLabel.text isEqualToString:@"O"] && [space186.titleLabel.text isEqualToString:@"O"] && [space188.titleLabel.text isEqualToString:@"O"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER O WINS !"] message:[NSString stringWithFormat:@"Player X, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
    }
    
    if ([space182.titleLabel.text isEqualToString:@"O"] && [space185.titleLabel.text isEqualToString:@"O"] && [space188.titleLabel.text isEqualToString:@"O"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER O WINS !"] message:[NSString stringWithFormat:@"Player X, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
    }
    
    if ([space183.titleLabel.text isEqualToString:@"O"] && [space186.titleLabel.text isEqualToString:@"O"] && [space189.titleLabel.text isEqualToString:@"O"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER O WINS !"] message:[NSString stringWithFormat:@"Player X, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
    }
    
    if ([space184.titleLabel.text isEqualToString:@"O"] && [space187.titleLabel.text isEqualToString:@"O"] && [space190.titleLabel.text isEqualToString:@"O"] && vvv == 0){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"Tic Tac Toe 3 in a row !             PLAYER O WINS !"] message:[NSString stringWithFormat:@"Player X, better luck next time :-/"] delegate:nil cancelButtonTitle:@"KK" otherButtonTitles:nil];
        [alert show];
        cover.alpha = .8;
        vvv = 1;
    }
    
    /*
     going.titleLabel.text != @"." && going2.titleLabel.text != @"." && going3.titleLabel.text != @"." && going4.titleLabel.text != @"." && going5.titleLabel.text != @"." && going6.titleLabel.text != @"." && going7.titleLabel.text != @"." && going8.titleLabel.text != @"." && going9.titleLabel.text != @"." && 
     */
    
    
    
    
    
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

-(void)computer{
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
   
        
        
        
        
        hh = 0;
        ii = 1;
        jj = 2;
        
        while(jj <= 80){
            going = [buttons objectAtIndex:hh];
            going2 = [buttons objectAtIndex:ii];
            going3 = [buttons objectAtIndex:jj];
            
            if ([going.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"."] && hh%3 == 0 && gone == 0) {
                [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going3 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"."] && hh%3 == 0 && gone == 0) {
                [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going2 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && [going.titleLabel.text isEqualToString:@"."] && hh%3 == 0 && gone == 0) {
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0) {
                [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going3 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0) {
                [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going2 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && [going.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0) {
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0) {
                [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going3 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0) {
                [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going2 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && [going.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0) {
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0) {
                [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going3 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0) {
                [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going2 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && [going.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0) {
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"."] && (hh-1)%9 == 0 && gone == 0) {
                [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going3 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"."] && (hh-1)%9 == 0 && gone == 0) {
                [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going2 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && [going.titleLabel.text isEqualToString:@"."] && (hh-1)%9 == 0 && gone == 0) {
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0) {
                [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going3 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && [going2.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0) {
                [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going2 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going2.titleLabel.text isEqualToString:@"O"] && [going3.titleLabel.text isEqualToString:@"O"] && [going.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0) {
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
                person++;
                gone = 1;
            }
            hh++;
            ii++;
            jj++;
        }
        
        
        
        
        
        //////////////////////////////////////////////////////////////////////////////
        
        
        
        
        
        hh = 0;
    ii = 1;
    jj = 2;
    
    while(jj <= 80){
        going = [buttons objectAtIndex:hh];
        going2 = [buttons objectAtIndex:ii];
        going3 = [buttons objectAtIndex:jj];
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"."] && hh%3 == 0 && gone == 0) {
        [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going3 setTitle:@"O" forState:UIControlStateNormal];
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
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"."] && hh%3 == 0 && gone == 0) {
            [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going2 setTitle:@"O" forState:UIControlStateNormal];
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
        
        if ([going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going.titleLabel.text isEqualToString:@"."] && hh%3 == 0 && gone == 0) {
            [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going setTitle:@"O" forState:UIControlStateNormal];
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
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0) {
            [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going3 setTitle:@"O" forState:UIControlStateNormal];
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
        
        if ([going.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0) {
            [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going2 setTitle:@"O" forState:UIControlStateNormal];
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
        
        if ([going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0) {
            [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            [going setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0) {
                [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going3 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0) {
                [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going2 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0) {
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0) {
                [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going3 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0) {
                [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going2 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going.titleLabel.text isEqualToString:@"."] && hh%9 == 0 && gone == 0) {
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"."] && (hh-1)%9 == 0 && gone == 0) {
                [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going3 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"."] && (hh-1)%9 == 0 && gone == 0) {
                [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going2 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going.titleLabel.text isEqualToString:@"."] && (hh-1)%9 == 0 && gone == 0) {
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0) {
                [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going3 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going2.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0) {
                [going2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going2 setTitle:@"O" forState:UIControlStateNormal];
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
            
            if ([going2.titleLabel.text isEqualToString:@"X"] && [going3.titleLabel.text isEqualToString:@"X"] && [going.titleLabel.text isEqualToString:@"."] && (hh-2)%9 == 0 && gone == 0) {
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
                person++;
                gone = 1;
            }
            hh++;
            ii++;
            jj++;
        }
        
        
        ii = 0;
        ii = random() % 6;
        if (gos%9 == 0){
            jj = (int)gos + 4;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."] && ii != 0){
                if (ii == 0 || ii == 1){
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
                person++;
                gone = 1;
                }
            }
        }
        
        
        ii = 0;
       ii = random() % 6;
        if (gos%9 == 2){
            jj = (int)gos + 2;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."] && ii != 0){
                if (ii == 0 || ii == 1){
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
                person++;
                gone = 1;
                }
            }
        }
        
        
          ii = 0;
        ii = random() % 6;
        if (gos%9 == 6){
            jj = (int)gos - 2;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1){
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
                person++;
                gone = 1;
                }
            }
        }
        
        
       ii = 0;
        ii = random() % 6;
        if (gos%9 == 8){
            jj = (int)gos - 4;
            going = [buttons objectAtIndex:jj];
            if (gone == 0 && [going.titleLabel.text isEqualToString:@"."]){
                if (ii == 0 || ii == 1){
                [going setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going setTitle:@"O" forState:UIControlStateNormal];
                person++;
                gone = 1;
                }
            }
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
                
                sss = random() % 3;
                uuu = 0;
                if (rrr == 1 || sss == 0){
                    [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                [going3 setTitle:@"O" forState:UIControlStateNormal];
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
                person++;
                a12345 = 1;
                        ppp = 1;
                    }else{
                        if (uuu > 200 && ppp == 0 && [going3.titleLabel.text isEqualToString:@"."]) {
                        [going3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
                            [going3 setTitle:@"O" forState:UIControlStateNormal];
                            person++;
                            a12345 = 1;
                            ppp = 1;
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
    lines1.alpha = 1;
    
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
    lines1.alpha = 1;
    
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

/////////////////////////////////////////////////////////////////////////////////////////////////


-(void)subScoreX{
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

-(void)subScoreO{
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

-(void)subScoreG{
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

-(void)subScoreD{
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
 
 
 
 
 
 */


@end
