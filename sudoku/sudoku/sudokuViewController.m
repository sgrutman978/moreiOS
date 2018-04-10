//
//  sudokuViewController.m
//  sudoku
//
//  Created by Steven Grutman on 1/9/13.
//  Copyright (c) 2013 Steven Grutman. All rights reserved.
//

#import "sudokuViewController.h"

@interface sudokuViewController ()

@end

@implementation sudokuViewController






- (void)viewDidLoad
{
    [super viewDidLoad];
    
    buttons = [NSArray arrayWithObjects:space1, space2, space3, space4, space5, space6, space7, space8, space9, space10, space11, space12, space13, space14, space15, space16, space17, space18, space19, space120, space121, space122, space123, space124, space125, space126, space127, space128, space129, space130, space131, space132, space133, space134, space135, space136, space137, space138, space139, space140, space141, space142, space143, space144, space145, space146, space147, space148, space149, space150, space151, space152, space153, space154, space155, space156, space157, space158, space159, space160, space161, space162, space163, space164, space165, space166, space167, space168, space169, space170, space171, space172, space173, space174, space175, space176, space177, space178, space179, space180, space181, nil];
    
    row1 = [NSArray arrayWithObjects:space1, space2, space3, space10, space11, space12, space19, space120, space121, nil];
   
    row2 = [NSArray arrayWithObjects:space4, space5, space6, space13, space14, space15, space122, space123, space124, nil];
    
     row3 = [NSArray arrayWithObjects:space7, space8, space9, space16, space17, space18, space125, space126, space127, nil];
    
     row4 = [NSArray arrayWithObjects:space128, space129, space130, space137, space138, space139, space146, space147, space148, nil];
    
     row5 = [NSArray arrayWithObjects:space131, space132, space133, space140, space141, space142, space149, space150, space151, nil];
    
     row6 = [NSArray arrayWithObjects:space134, space135, space136, space143, space144, space145, space152, space153, space154, nil];
    
     row7 = [NSArray arrayWithObjects:space155, space156, space157, space164, space165, space166, space173, space174, space175, nil];
    
     row8 = [NSArray arrayWithObjects:space158, space159, space160, space167, space168, space169, space176, space177, space178, nil];
    
     row9 = [NSArray arrayWithObjects:space161, space162, space163, space170, space171, space172, space179, space180, space181, nil];
    
    
    column1 = [NSArray arrayWithObjects:space1, space4, space7, space128, space131, space134, space155, space158, space161, nil];
    
    column2 = [NSArray arrayWithObjects:space2, space5, space8, space129, space132, space135, space156, space159, space162, nil];
    
    column3 = [NSArray arrayWithObjects:space3, space6, space9, space130, space133, space136, space157, space160, space163, nil];
    
    column4 = [NSArray arrayWithObjects:space10, space13, space16, space137, space140, space143, space164, space167, space170, nil];
    
    column5 = [NSArray arrayWithObjects:space11, space14, space17, space138, space141, space144, space165, space168, space171, nil];
    
    column6 = [NSArray arrayWithObjects:space12, space15, space18, space139, space142, space145, space166, space169, space172, nil];
    
    column7 = [NSArray arrayWithObjects:space19, space122, space125, space146, space149, space152, space173, space176, space179, nil];
    
    column8 = [NSArray arrayWithObjects:space120, space123, space126, space147, space150, space153, space174, space177, space180, nil];
    
    column9 = [NSArray arrayWithObjects:space121, space124, space127, space148, space151, space154, space175, space178, space181, nil];
    
    
    
    box1 = [NSArray arrayWithObjects:space1, space2, space3, space4, space5, space6, space7, space8, space9, nil];
    
   box2 = [NSArray arrayWithObjects:space10, space11, space12, space13, space14, space15, space16, space17, space18, nil];
    
    box3 = [NSArray arrayWithObjects:space19, space120, space121, space122, space123, space124, space125, space126, space127, nil];
    
    box4 = [NSArray arrayWithObjects:space128, space129, space130, space131, space132, space133, space134, space135, space136, nil];
    
    box5 = [NSArray arrayWithObjects:space137, space138, space139, space140, space141, space142, space143, space144, space145, nil];
    
    box6 = [NSArray arrayWithObjects:space146, space147, space148, space149, space150, space151, space152, space153, space154, nil];
    
    box7 = [NSArray arrayWithObjects:space155, space156, space157, space158, space159, space160, space161, space162, space163, nil];
    
    box8 = [NSArray arrayWithObjects:space164, space165, space166, space167, space168, space169, space170, space171, space172, nil];
    
    box9 = [NSArray arrayWithObjects:space173, space174, space175, space176, space177, space178, space179, space180, space181, nil];
    
    gg = 0;
    
    dubs = 000000000000000000000000000;
    counter4 = 180;

        
    [choice1 setHidden:YES];
    [choice2 setHidden:YES];
    [choice3 setHidden:YES];
    [choice4 setHidden:YES];
    [choice5 setHidden:YES];
    [choice6 setHidden:YES];
    [choice7 setHidden:YES];
    [choice8 setHidden:YES];
    [choice9 setHidden:YES];
    
    
    
    for (counter2 = 0; counter2 <= counter4; counter2++){
        NSLog(@"%d", counter2);
        rand = (random() % 9) + 1;
        rand2 = random() % 81;
    }
    
    
    
    gg = 0;
    while (gg <= 80) {
        go = [buttons objectAtIndex:gg];
        [go setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [go setTitle:@"." forState:UIControlStateNormal];
        [go setBackgroundColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0]];
        // [go setTitleColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
        [go setTitleColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
        /* rand = (random() % 9) + 1;
         [go setTitle:[NSString stringWithFormat:@"%d", rand] forState:UIControlStateNormal];*/
        gg++;
    }
    
    
    
    }

    
    
    
	// Do any additional setup after loading the view, typically from a nib.









-(IBAction)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    

        UITouch *myTouch = [[event allTouches] anyObject];
        cursor.center = [myTouch locationInView:self.view];
        
    hh = 0;
    while (hh <= 80) {
        go = [buttons objectAtIndex:hh];
        [go setBackgroundColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0]];
        if ([go.titleLabel.textColor isEqual:[UIColor blackColor]] || [go.titleLabel.textColor isEqual:[UIColor greenColor]]){
        }else{
            [go setTitleColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
        }
        hh++;
    }
    
    
    
    
    
    gg = 0;
     while (gg <= 80) {
     
     go = [buttons objectAtIndex:gg];
         if (CGRectIntersectsRect(go.frame, cursor.frame)) {
             if ([go.titleLabel.textColor isEqual:[UIColor blackColor]]){
             }else{
                  gg = 82;
                
         [go setBackgroundColor:[UIColor yellowColor]];
         [go setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
         [choice1 setHidden:NO];
         [choice2 setHidden:NO];
         [choice3 setHidden:NO];
         [choice4 setHidden:NO];
         [choice5 setHidden:NO];
         [choice6 setHidden:NO];
         [choice7 setHidden:NO];
         [choice8 setHidden:NO];
         [choice9 setHidden:NO];
     
             }
         }
     gg++;
     }
    
    if (gg == 81) {
        [choice1 setHidden:YES];
        [choice2 setHidden:YES];
        [choice3 setHidden:YES];
        [choice4 setHidden:YES];
        [choice5 setHidden:YES];
        [choice6 setHidden:YES];
        [choice7 setHidden:YES];
        [choice8 setHidden:YES];
        [choice9 setHidden:YES];
       
        hh = 0;
        while (hh <= 80) {
            go = [buttons objectAtIndex:hh];
            [go setBackgroundColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0]];
            if ([go.titleLabel.textColor isEqual:[UIColor blackColor]] || [go.titleLabel.textColor isEqual:[UIColor greenColor]]){
            }else{
             [go setTitleColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
            }
            hh++;
        }
        
    }
    
    
    
}


-(IBAction)chose1{
    [go setTitle:@"1" forState:UIControlStateNormal];
    [go setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [choice1 setHidden:YES];
    [choice2 setHidden:YES];
    [choice3 setHidden:YES];
    [choice4 setHidden:YES];
    [choice5 setHidden:YES];
    [choice6 setHidden:YES];
    [choice7 setHidden:YES];
    [choice8 setHidden:YES];
    [choice9 setHidden:YES];
    
    hh = 0;
    while (hh <= 80) {
        go = [buttons objectAtIndex:hh];
        [go setBackgroundColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0]];
        if ([go.titleLabel.textColor isEqual:[UIColor blackColor]] || [go.titleLabel.textColor isEqual:[UIColor greenColor]]){
        }else{
            [go setTitleColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
        }
        hh++;
    }
    
}


-(IBAction)chose2{
    [go setTitle:@"2" forState:UIControlStateNormal];
    [go setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [choice1 setHidden:YES];
    [choice2 setHidden:YES];
    [choice3 setHidden:YES];
    [choice4 setHidden:YES];
    [choice5 setHidden:YES];
    [choice6 setHidden:YES];
    [choice7 setHidden:YES];
    [choice8 setHidden:YES];
    [choice9 setHidden:YES];
    
    hh = 0;
    while (hh <= 80) {
        go = [buttons objectAtIndex:hh];
        [go setBackgroundColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0]];
        if ([go.titleLabel.textColor isEqual:[UIColor blackColor]] || [go.titleLabel.textColor isEqual:[UIColor greenColor]]){
        }else{
            [go setTitleColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
        }
        hh++;
    }
}

-(IBAction)chose3{
    [go setTitle:@"3" forState:UIControlStateNormal];
    [go setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [choice1 setHidden:YES];
    [choice2 setHidden:YES];
    [choice3 setHidden:YES];
    [choice4 setHidden:YES];
    [choice5 setHidden:YES];
    [choice6 setHidden:YES];
    [choice7 setHidden:YES];
    [choice8 setHidden:YES];
    [choice9 setHidden:YES];
    
    hh = 0;
    while (hh <= 80) {
        go = [buttons objectAtIndex:hh];
        [go setBackgroundColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0]];
        if ([go.titleLabel.textColor isEqual:[UIColor blackColor]] || [go.titleLabel.textColor isEqual:[UIColor greenColor]]){
        }else{
            [go setTitleColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
        }
        hh++;
    }
}

-(IBAction)chose4{
    [go setTitle:@"4" forState:UIControlStateNormal];
    [go setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [choice1 setHidden:YES];
    [choice2 setHidden:YES];
    [choice3 setHidden:YES];
    [choice4 setHidden:YES];
    [choice5 setHidden:YES];
    [choice6 setHidden:YES];
    [choice7 setHidden:YES];
    [choice8 setHidden:YES];
    [choice9 setHidden:YES];
    
    hh = 0;
    while (hh <= 80) {
        go = [buttons objectAtIndex:hh];
        [go setBackgroundColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0]];
        if ([go.titleLabel.textColor isEqual:[UIColor blackColor]] || [go.titleLabel.textColor isEqual:[UIColor greenColor]]){
        }else{
            [go setTitleColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
        }
        hh++;
    }
}

-(IBAction)chose5{
    [go setTitle:@"5" forState:UIControlStateNormal];
    [go setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [choice1 setHidden:YES];
    [choice2 setHidden:YES];
    [choice3 setHidden:YES];
    [choice4 setHidden:YES];
    [choice5 setHidden:YES];
    [choice6 setHidden:YES];
    [choice7 setHidden:YES];
    [choice8 setHidden:YES];
    [choice9 setHidden:YES];
    
    hh = 0;
    while (hh <= 80) {
        go = [buttons objectAtIndex:hh];
        [go setBackgroundColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0]];
        if ([go.titleLabel.textColor isEqual:[UIColor blackColor]] || [go.titleLabel.textColor isEqual:[UIColor greenColor]]){
        }else{
            [go setTitleColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
        }
        hh++;
    }
}

-(IBAction)chose6{
    [go setTitle:@"6" forState:UIControlStateNormal];
    [go setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [choice1 setHidden:YES];
    [choice2 setHidden:YES];
    [choice3 setHidden:YES];
    [choice4 setHidden:YES];
    [choice5 setHidden:YES];
    [choice6 setHidden:YES];
    [choice7 setHidden:YES];
    [choice8 setHidden:YES];
    [choice9 setHidden:YES];
    
    hh = 0;
    while (hh <= 80) {
        go = [buttons objectAtIndex:hh];
        [go setBackgroundColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0]];
        if ([go.titleLabel.textColor isEqual:[UIColor blackColor]] || [go.titleLabel.textColor isEqual:[UIColor greenColor]]){
        }else{
            [go setTitleColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
        }
        hh++;
    }
}

-(IBAction)chose7{
    [go setTitle:@"7" forState:UIControlStateNormal];
    [go setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [choice1 setHidden:YES];
    [choice2 setHidden:YES];
    [choice3 setHidden:YES];
    [choice4 setHidden:YES];
    [choice5 setHidden:YES];
    [choice6 setHidden:YES];
    [choice7 setHidden:YES];
    [choice8 setHidden:YES];
    [choice9 setHidden:YES];
    
    hh = 0;
    while (hh <= 80) {
        go = [buttons objectAtIndex:hh];
        [go setBackgroundColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0]];
        if ([go.titleLabel.textColor isEqual:[UIColor blackColor]] || [go.titleLabel.textColor isEqual:[UIColor greenColor]]){
        }else{
            [go setTitleColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
        }
        hh++;
    }
}

-(IBAction)chose8{
    [go setTitle:@"8" forState:UIControlStateNormal];
    [go setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [choice1 setHidden:YES];
    [choice2 setHidden:YES];
    [choice3 setHidden:YES];
    [choice4 setHidden:YES];
    [choice5 setHidden:YES];
    [choice6 setHidden:YES];
    [choice7 setHidden:YES];
    [choice8 setHidden:YES];
    [choice9 setHidden:YES];
    
    hh = 0;
    while (hh <= 80) {
        go = [buttons objectAtIndex:hh];
        [go setBackgroundColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0]];
        if ([go.titleLabel.textColor isEqual:[UIColor blackColor]] || [go.titleLabel.textColor isEqual:[UIColor greenColor]]){
        }else{
            [go setTitleColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
        }
        hh++;
    }
}

-(IBAction)chose9{
    [go setTitle:@"9" forState:UIControlStateNormal];
    [go setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [choice1 setHidden:YES];
    [choice2 setHidden:YES];
    [choice3 setHidden:YES];
    [choice4 setHidden:YES];
    [choice5 setHidden:YES];
    [choice6 setHidden:YES];
    [choice7 setHidden:YES];
    [choice8 setHidden:YES];
    [choice9 setHidden:YES];
    
    hh = 0;
    while (hh <= 80) {
        go = [buttons objectAtIndex:hh];
        [go setBackgroundColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0]];
        if ([go.titleLabel.textColor isEqual:[UIColor blackColor]] || [go.titleLabel.textColor isEqual:[UIColor greenColor]]){
        }else{
            [go setTitleColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
        }
        hh++;
    }
}



-(IBAction)reset{
    
    gg = 0;
    while (gg <= 80) {
        go = [buttons objectAtIndex:gg];
        [go setTitle:@"." forState:UIControlStateNormal];
        [go setBackgroundColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0]];
        [go setTitleColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
        gg++;
    }
    
    bb = 0;
    while (bb < 81){
        aa = 1;
    while (aa <= 10){
        button = [buttons objectAtIndex:bb];
         NSLog(@"%d", bb);
        if (aa == 10) {
            [go setTitle:@"." forState:UIControlStateNormal];
            [go setBackgroundColor:[UIColor colorWithRed:0.0 green:0.5 blue:1.0 alpha:1.0]];
            [go setTitleColor:[UIColor colorWithRed:0.0 green:0 blue:0 alpha:1.0] forState:UIControlStateNormal];
           bb--;
           // aa = 1;
        }else{

            [button setTitle:[NSString stringWithFormat:@"%d", aa]  forState:UIControlStateNormal];
            [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
            // run through to see if allowable
            aa = 11;
            
        }
        
        
    }
    }
    
    
    /* dubs = random() % 7;
    NSLog(@"%d", dubs);
    if (dubs == 0) {
        [self board0];
    }
    
    if (dubs == 1) {
        [self board1];
    }
    
    if (dubs == 2) {
        [self board2];
    }
    
    if (dubs == 3) {
        [self board3];
    }
    
    if (dubs == 4) {
        [self board4];
    }
    
    if (dubs == 5) {
        [self board5];
    }
    
    if (dubs == 6) {
        [self board6];
    }
   
    
    
    
    for (counter3 = 0; counter3 <= 42; counter3++){
     NSLog(@"%d", counter3);
     rand2 = random() % 80;
     go = [buttons objectAtIndex:rand2];
     [go setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
     } */
    
    
            
    }

/*
-(void)board0{
    
    [space1 setTitle:@"6" forState:UIControlStateNormal];
    [space2 setTitle:@"3" forState:UIControlStateNormal];
    [space3 setTitle:@"2" forState:UIControlStateNormal];
    [space4 setTitle:@"4" forState:UIControlStateNormal];
    [space5 setTitle:@"8" forState:UIControlStateNormal];
    [space6 setTitle:@"7" forState:UIControlStateNormal];
    [space7 setTitle:@"5" forState:UIControlStateNormal];
    [space8 setTitle:@"1" forState:UIControlStateNormal];
    [space9 setTitle:@"9" forState:UIControlStateNormal];
    [space10 setTitle:@"7" forState:UIControlStateNormal];
    [space11 setTitle:@"8" forState:UIControlStateNormal];
    [space12 setTitle:@"1" forState:UIControlStateNormal];
    [space13 setTitle:@"5" forState:UIControlStateNormal];
    [space14 setTitle:@"9" forState:UIControlStateNormal];
    [space15 setTitle:@"6" forState:UIControlStateNormal];
    [space16 setTitle:@"2" forState:UIControlStateNormal];
    [space17 setTitle:@"4" forState:UIControlStateNormal];
    [space18 setTitle:@"3" forState:UIControlStateNormal];
    [space19 setTitle:@"9" forState:UIControlStateNormal];
    [space120 setTitle:@"4" forState:UIControlStateNormal];
    [space121 setTitle:@"5" forState:UIControlStateNormal];
    [space122 setTitle:@"2" forState:UIControlStateNormal];
    [space123 setTitle:@"1" forState:UIControlStateNormal];
    [space124 setTitle:@"3" forState:UIControlStateNormal];
    [space125 setTitle:@"8" forState:UIControlStateNormal];
    [space126 setTitle:@"7" forState:UIControlStateNormal];
    [space127 setTitle:@"6" forState:UIControlStateNormal];
    [space128 setTitle:@"8" forState:UIControlStateNormal];
    [space129 setTitle:@"6" forState:UIControlStateNormal];
    [space130 setTitle:@"4" forState:UIControlStateNormal];
    [space131 setTitle:@"7" forState:UIControlStateNormal];
    [space132 setTitle:@"5" forState:UIControlStateNormal];
    [space133 setTitle:@"1" forState:UIControlStateNormal];
    [space134 setTitle:@"2" forState:UIControlStateNormal];
    [space135 setTitle:@"9" forState:UIControlStateNormal];
    [space136 setTitle:@"3" forState:UIControlStateNormal];
    [space137 setTitle:@"3" forState:UIControlStateNormal];
    [space138 setTitle:@"5" forState:UIControlStateNormal];
    [space139 setTitle:@"2" forState:UIControlStateNormal];
    [space140 setTitle:@"9" forState:UIControlStateNormal];
    [space141 setTitle:@"6" forState:UIControlStateNormal];
    [space142 setTitle:@"8" forState:UIControlStateNormal];
    [space143 setTitle:@"1" forState:UIControlStateNormal];
    [space144 setTitle:@"7" forState:UIControlStateNormal];
    [space145 setTitle:@"4" forState:UIControlStateNormal];
    [space146 setTitle:@"7" forState:UIControlStateNormal];
    [space147 setTitle:@"9" forState:UIControlStateNormal];
    [space148 setTitle:@"1" forState:UIControlStateNormal];
    [space149 setTitle:@"3" forState:UIControlStateNormal];
    [space150 setTitle:@"2" forState:UIControlStateNormal];
    [space151 setTitle:@"4" forState:UIControlStateNormal];
    [space152 setTitle:@"6" forState:UIControlStateNormal];
    [space153 setTitle:@"5" forState:UIControlStateNormal];
    [space154 setTitle:@"8" forState:UIControlStateNormal];
    [space155 setTitle:@"9" forState:UIControlStateNormal];
    [space156 setTitle:@"4" forState:UIControlStateNormal];
    [space157 setTitle:@"5" forState:UIControlStateNormal];
    [space158 setTitle:@"1" forState:UIControlStateNormal];
    [space159 setTitle:@"7" forState:UIControlStateNormal];
    [space160 setTitle:@"6" forState:UIControlStateNormal];
    [space161 setTitle:@"3" forState:UIControlStateNormal];
    [space162 setTitle:@"2" forState:UIControlStateNormal];
    [space163 setTitle:@"8" forState:UIControlStateNormal];
    [space164 setTitle:@"6" forState:UIControlStateNormal];
    [space165 setTitle:@"3" forState:UIControlStateNormal];
    [space166 setTitle:@"7" forState:UIControlStateNormal];
    [space167 setTitle:@"8" forState:UIControlStateNormal];
    [space168 setTitle:@"2" forState:UIControlStateNormal];
    [space169 setTitle:@"5" forState:UIControlStateNormal];
    [space170 setTitle:@"4" forState:UIControlStateNormal];
    [space171 setTitle:@"1" forState:UIControlStateNormal];
    [space172 setTitle:@"9" forState:UIControlStateNormal];
    [space173 setTitle:@"1" forState:UIControlStateNormal];
    [space174 setTitle:@"8" forState:UIControlStateNormal];
    [space175 setTitle:@"2" forState:UIControlStateNormal];
    [space176 setTitle:@"4" forState:UIControlStateNormal];
    [space177 setTitle:@"3" forState:UIControlStateNormal];
    [space178 setTitle:@"9" forState:UIControlStateNormal];
    [space179 setTitle:@"5" forState:UIControlStateNormal];
    [space180 setTitle:@"6" forState:UIControlStateNormal];
    [space181 setTitle:@"7" forState:UIControlStateNormal];
    
    
    
}


-(void)board1{
    
    [space1 setTitle:@"5" forState:UIControlStateNormal];
    [space2 setTitle:@"8" forState:UIControlStateNormal];
    [space3 setTitle:@"6" forState:UIControlStateNormal];
    [space4 setTitle:@"1" forState:UIControlStateNormal];
    [space5 setTitle:@"3" forState:UIControlStateNormal];
    [space6 setTitle:@"7" forState:UIControlStateNormal];
    [space7 setTitle:@"2" forState:UIControlStateNormal];
    [space8 setTitle:@"4" forState:UIControlStateNormal];
    [space9 setTitle:@"9" forState:UIControlStateNormal];
    [space10 setTitle:@"3" forState:UIControlStateNormal];
    [space11 setTitle:@"7" forState:UIControlStateNormal];
    [space12 setTitle:@"4" forState:UIControlStateNormal];
    [space13 setTitle:@"9" forState:UIControlStateNormal];
    [space14 setTitle:@"5" forState:UIControlStateNormal];
    [space15 setTitle:@"2" forState:UIControlStateNormal];
    [space16 setTitle:@"8" forState:UIControlStateNormal];
    [space17 setTitle:@"1" forState:UIControlStateNormal];
    [space18 setTitle:@"6" forState:UIControlStateNormal];
    [space19 setTitle:@"9" forState:UIControlStateNormal];
    [space120 setTitle:@"1" forState:UIControlStateNormal];
    [space121 setTitle:@"2" forState:UIControlStateNormal];
    [space122 setTitle:@"8" forState:UIControlStateNormal];
    [space123 setTitle:@"6" forState:UIControlStateNormal];
    [space124 setTitle:@"4" forState:UIControlStateNormal];
    [space125 setTitle:@"5" forState:UIControlStateNormal];
    [space126 setTitle:@"7" forState:UIControlStateNormal];
    [space127 setTitle:@"3" forState:UIControlStateNormal];
    [space128 setTitle:@"8" forState:UIControlStateNormal];
    [space129 setTitle:@"7" forState:UIControlStateNormal];
    [space130 setTitle:@"2" forState:UIControlStateNormal];
    [space131 setTitle:@"6" forState:UIControlStateNormal];
    [space132 setTitle:@"9" forState:UIControlStateNormal];
    [space133 setTitle:@"3" forState:UIControlStateNormal];
    [space134 setTitle:@"4" forState:UIControlStateNormal];
    [space135 setTitle:@"1" forState:UIControlStateNormal];
    [space136 setTitle:@"5" forState:UIControlStateNormal];
    [space137 setTitle:@"5" forState:UIControlStateNormal];
    [space138 setTitle:@"4" forState:UIControlStateNormal];
    [space139 setTitle:@"3" forState:UIControlStateNormal];
    [space140 setTitle:@"7" forState:UIControlStateNormal];
    [space141 setTitle:@"8" forState:UIControlStateNormal];
    [space142 setTitle:@"1" forState:UIControlStateNormal];
    [space143 setTitle:@"6" forState:UIControlStateNormal];
    [space144 setTitle:@"2" forState:UIControlStateNormal];
    [space145 setTitle:@"9" forState:UIControlStateNormal];
    [space146 setTitle:@"1" forState:UIControlStateNormal];
    [space147 setTitle:@"9" forState:UIControlStateNormal];
    [space148 setTitle:@"6" forState:UIControlStateNormal];
    [space149 setTitle:@"2" forState:UIControlStateNormal];
    [space150 setTitle:@"4" forState:UIControlStateNormal];
    [space151 setTitle:@"5" forState:UIControlStateNormal];
    [space152 setTitle:@"7" forState:UIControlStateNormal];
    [space153 setTitle:@"3" forState:UIControlStateNormal];
    [space154 setTitle:@"8" forState:UIControlStateNormal];
    [space155 setTitle:@"9" forState:UIControlStateNormal];
    [space156 setTitle:@"5" forState:UIControlStateNormal];
    [space157 setTitle:@"4" forState:UIControlStateNormal];
    [space158 setTitle:@"7" forState:UIControlStateNormal];
    [space159 setTitle:@"2" forState:UIControlStateNormal];
    [space160 setTitle:@"1" forState:UIControlStateNormal];
    [space161 setTitle:@"3" forState:UIControlStateNormal];
    [space162 setTitle:@"6" forState:UIControlStateNormal];
    [space163 setTitle:@"8" forState:UIControlStateNormal];
    [space164 setTitle:@"2" forState:UIControlStateNormal];
    [space165 setTitle:@"3" forState:UIControlStateNormal];
    [space166 setTitle:@"7" forState:UIControlStateNormal];
    [space167 setTitle:@"4" forState:UIControlStateNormal];
    [space168 setTitle:@"6" forState:UIControlStateNormal];
    [space169 setTitle:@"8" forState:UIControlStateNormal];
    [space170 setTitle:@"1" forState:UIControlStateNormal];
    [space171 setTitle:@"9" forState:UIControlStateNormal];
    [space172 setTitle:@"5" forState:UIControlStateNormal];
    [space173 setTitle:@"6" forState:UIControlStateNormal];
    [space174 setTitle:@"8" forState:UIControlStateNormal];
    [space175 setTitle:@"1" forState:UIControlStateNormal];
    [space176 setTitle:@"3" forState:UIControlStateNormal];
    [space177 setTitle:@"5" forState:UIControlStateNormal];
    [space178 setTitle:@"9" forState:UIControlStateNormal];
    [space179 setTitle:@"4" forState:UIControlStateNormal];
    [space180 setTitle:@"2" forState:UIControlStateNormal];
    [space181 setTitle:@"7" forState:UIControlStateNormal];
    
    
    
}



-(void)board2{
    
    [space1 setTitle:@"3" forState:UIControlStateNormal];
    [space2 setTitle:@"4" forState:UIControlStateNormal];
    [space3 setTitle:@"1" forState:UIControlStateNormal];
    [space4 setTitle:@"2" forState:UIControlStateNormal];
    [space5 setTitle:@"5" forState:UIControlStateNormal];
    [space6 setTitle:@"6" forState:UIControlStateNormal];
    [space7 setTitle:@"9" forState:UIControlStateNormal];
    [space8 setTitle:@"8" forState:UIControlStateNormal];
    [space9 setTitle:@"7" forState:UIControlStateNormal];
    [space10 setTitle:@"2" forState:UIControlStateNormal];
    [space11 setTitle:@"9" forState:UIControlStateNormal];
    [space12 setTitle:@"7" forState:UIControlStateNormal];
    [space13 setTitle:@"8" forState:UIControlStateNormal];
    [space14 setTitle:@"3" forState:UIControlStateNormal];
    [space15 setTitle:@"4" forState:UIControlStateNormal];
    [space16 setTitle:@"1" forState:UIControlStateNormal];
    [space17 setTitle:@"5" forState:UIControlStateNormal];
    [space18 setTitle:@"6" forState:UIControlStateNormal];
    [space19 setTitle:@"6" forState:UIControlStateNormal];
    [space120 setTitle:@"8" forState:UIControlStateNormal];
    [space121 setTitle:@"5" forState:UIControlStateNormal];
    [space122 setTitle:@"9" forState:UIControlStateNormal];
    [space123 setTitle:@"7" forState:UIControlStateNormal];
    [space124 setTitle:@"1" forState:UIControlStateNormal];
    [space125 setTitle:@"3" forState:UIControlStateNormal];
    [space126 setTitle:@"2" forState:UIControlStateNormal];
    [space127 setTitle:@"4" forState:UIControlStateNormal];
    [space128 setTitle:@"1" forState:UIControlStateNormal];
    [space129 setTitle:@"9" forState:UIControlStateNormal];
    [space130 setTitle:@"2" forState:UIControlStateNormal];
    [space131 setTitle:@"8" forState:UIControlStateNormal];
    [space132 setTitle:@"7" forState:UIControlStateNormal];
    [space133 setTitle:@"5" forState:UIControlStateNormal];
    [space134 setTitle:@"6" forState:UIControlStateNormal];
    [space135 setTitle:@"3" forState:UIControlStateNormal];
    [space136 setTitle:@"4" forState:UIControlStateNormal];
    [space137 setTitle:@"6" forState:UIControlStateNormal];
    [space138 setTitle:@"7" forState:UIControlStateNormal];
    [space139 setTitle:@"5" forState:UIControlStateNormal];
    [space140 setTitle:@"4" forState:UIControlStateNormal];
    [space141 setTitle:@"2" forState:UIControlStateNormal];
    [space142 setTitle:@"3" forState:UIControlStateNormal];
    [space143 setTitle:@"9" forState:UIControlStateNormal];
    [space144 setTitle:@"1" forState:UIControlStateNormal];
    [space145 setTitle:@"8" forState:UIControlStateNormal];
    [space146 setTitle:@"8" forState:UIControlStateNormal];
    [space147 setTitle:@"4" forState:UIControlStateNormal];
    [space148 setTitle:@"3" forState:UIControlStateNormal];
    [space149 setTitle:@"1" forState:UIControlStateNormal];
    [space150 setTitle:@"9" forState:UIControlStateNormal];
    [space151 setTitle:@"6" forState:UIControlStateNormal];
    [space152 setTitle:@"2" forState:UIControlStateNormal];
    [space153 setTitle:@"5" forState:UIControlStateNormal];
    [space154 setTitle:@"7" forState:UIControlStateNormal];
    [space155 setTitle:@"5" forState:UIControlStateNormal];
    [space156 setTitle:@"6" forState:UIControlStateNormal];
    [space157 setTitle:@"3" forState:UIControlStateNormal];
    [space158 setTitle:@"4" forState:UIControlStateNormal];
    [space159 setTitle:@"1" forState:UIControlStateNormal];
    [space160 setTitle:@"9" forState:UIControlStateNormal];
    [space161 setTitle:@"7" forState:UIControlStateNormal];
    [space162 setTitle:@"2" forState:UIControlStateNormal];
    [space163 setTitle:@"8" forState:UIControlStateNormal];
    [space164 setTitle:@"7" forState:UIControlStateNormal];
    [space165 setTitle:@"8" forState:UIControlStateNormal];
    [space166 setTitle:@"9" forState:UIControlStateNormal];
    [space167 setTitle:@"5" forState:UIControlStateNormal];
    [space168 setTitle:@"6" forState:UIControlStateNormal];
    [space169 setTitle:@"2" forState:UIControlStateNormal];
    [space170 setTitle:@"3" forState:UIControlStateNormal];
    [space171 setTitle:@"4" forState:UIControlStateNormal];
    [space172 setTitle:@"1" forState:UIControlStateNormal];
    [space173 setTitle:@"4" forState:UIControlStateNormal];
    [space174 setTitle:@"1" forState:UIControlStateNormal];
    [space175 setTitle:@"2" forState:UIControlStateNormal];
    [space176 setTitle:@"7" forState:UIControlStateNormal];
    [space177 setTitle:@"3" forState:UIControlStateNormal];
    [space178 setTitle:@"8" forState:UIControlStateNormal];
    [space179 setTitle:@"5" forState:UIControlStateNormal];
    [space180 setTitle:@"6" forState:UIControlStateNormal];
    [space181 setTitle:@"9" forState:UIControlStateNormal];
    
    
    
}


-(void)board3{
    
    [space1 setTitle:@"5" forState:UIControlStateNormal];
    [space2 setTitle:@"9" forState:UIControlStateNormal];
    [space3 setTitle:@"8" forState:UIControlStateNormal];
    [space4 setTitle:@"3" forState:UIControlStateNormal];
    [space5 setTitle:@"2" forState:UIControlStateNormal];
    [space6 setTitle:@"7" forState:UIControlStateNormal];
    [space7 setTitle:@"1" forState:UIControlStateNormal];
    [space8 setTitle:@"4" forState:UIControlStateNormal];
    [space9 setTitle:@"6" forState:UIControlStateNormal];
    [space10 setTitle:@"7" forState:UIControlStateNormal];
    [space11 setTitle:@"3" forState:UIControlStateNormal];
    [space12 setTitle:@"6" forState:UIControlStateNormal];
    [space13 setTitle:@"1" forState:UIControlStateNormal];
    [space14 setTitle:@"4" forState:UIControlStateNormal];
    [space15 setTitle:@"8" forState:UIControlStateNormal];
    [space16 setTitle:@"5" forState:UIControlStateNormal];
    [space17 setTitle:@"9" forState:UIControlStateNormal];
    [space18 setTitle:@"2" forState:UIControlStateNormal];
    [space19 setTitle:@"2" forState:UIControlStateNormal];
    [space120 setTitle:@"4" forState:UIControlStateNormal];
    [space121 setTitle:@"1" forState:UIControlStateNormal];
    [space122 setTitle:@"5" forState:UIControlStateNormal];
    [space123 setTitle:@"6" forState:UIControlStateNormal];
    [space124 setTitle:@"9" forState:UIControlStateNormal];
    [space125 setTitle:@"3" forState:UIControlStateNormal];
    [space126 setTitle:@"8" forState:UIControlStateNormal];
    [space127 setTitle:@"7" forState:UIControlStateNormal];
    [space128 setTitle:@"7" forState:UIControlStateNormal];
    [space129 setTitle:@"6" forState:UIControlStateNormal];
    [space130 setTitle:@"5" forState:UIControlStateNormal];
    [space131 setTitle:@"4" forState:UIControlStateNormal];
    [space132 setTitle:@"8" forState:UIControlStateNormal];
    [space133 setTitle:@"1" forState:UIControlStateNormal];
    [space134 setTitle:@"9" forState:UIControlStateNormal];
    [space135 setTitle:@"3" forState:UIControlStateNormal];
    [space136 setTitle:@"2" forState:UIControlStateNormal];
    [space137 setTitle:@"9" forState:UIControlStateNormal];
    [space138 setTitle:@"8" forState:UIControlStateNormal];
    [space139 setTitle:@"3" forState:UIControlStateNormal];
    [space140 setTitle:@"2" forState:UIControlStateNormal];
    [space141 setTitle:@"6" forState:UIControlStateNormal];
    [space142 setTitle:@"7" forState:UIControlStateNormal];
    [space143 setTitle:@"4" forState:UIControlStateNormal];
    [space144 setTitle:@"5" forState:UIControlStateNormal];
    [space145 setTitle:@"1" forState:UIControlStateNormal];
    [space146 setTitle:@"1" forState:UIControlStateNormal];
    [space147 setTitle:@"2" forState:UIControlStateNormal];
    [space148 setTitle:@"4" forState:UIControlStateNormal];
    [space149 setTitle:@"9" forState:UIControlStateNormal];
    [space150 setTitle:@"5" forState:UIControlStateNormal];
    [space151 setTitle:@"3" forState:UIControlStateNormal];
    [space152 setTitle:@"8" forState:UIControlStateNormal];
    [space153 setTitle:@"7" forState:UIControlStateNormal];
    [space154 setTitle:@"6" forState:UIControlStateNormal];
    [space155 setTitle:@"8" forState:UIControlStateNormal];
    [space156 setTitle:@"1" forState:UIControlStateNormal];
    [space157 setTitle:@"4" forState:UIControlStateNormal];
    [space158 setTitle:@"2" forState:UIControlStateNormal];
    [space159 setTitle:@"5" forState:UIControlStateNormal];
    [space160 setTitle:@"9" forState:UIControlStateNormal];
    [space161 setTitle:@"6" forState:UIControlStateNormal];
    [space162 setTitle:@"7" forState:UIControlStateNormal];
    [space163 setTitle:@"3" forState:UIControlStateNormal];
    [space164 setTitle:@"3" forState:UIControlStateNormal];
    [space165 setTitle:@"7" forState:UIControlStateNormal];
    [space166 setTitle:@"5" forState:UIControlStateNormal];
    [space167 setTitle:@"6" forState:UIControlStateNormal];
    [space168 setTitle:@"1" forState:UIControlStateNormal];
    [space169 setTitle:@"4" forState:UIControlStateNormal];
    [space170 setTitle:@"8" forState:UIControlStateNormal];
    [space171 setTitle:@"2" forState:UIControlStateNormal];
    [space172 setTitle:@"9" forState:UIControlStateNormal];
    [space173 setTitle:@"6" forState:UIControlStateNormal];
    [space174 setTitle:@"9" forState:UIControlStateNormal];
    [space175 setTitle:@"2" forState:UIControlStateNormal];
    [space176 setTitle:@"7" forState:UIControlStateNormal];
    [space177 setTitle:@"3" forState:UIControlStateNormal];
    [space178 setTitle:@"8" forState:UIControlStateNormal];
    [space179 setTitle:@"4" forState:UIControlStateNormal];
    [space180 setTitle:@"1" forState:UIControlStateNormal];
    [space181 setTitle:@"5" forState:UIControlStateNormal];
    
    
    
}




-(void)board4{
    
    [space1 setTitle:@"3" forState:UIControlStateNormal];
    [space2 setTitle:@"6" forState:UIControlStateNormal];
    [space3 setTitle:@"1" forState:UIControlStateNormal];
    [space4 setTitle:@"8" forState:UIControlStateNormal];
    [space5 setTitle:@"5" forState:UIControlStateNormal];
    [space6 setTitle:@"9" forState:UIControlStateNormal];
    [space7 setTitle:@"4" forState:UIControlStateNormal];
    [space8 setTitle:@"7" forState:UIControlStateNormal];
    [space9 setTitle:@"2" forState:UIControlStateNormal];
    [space10 setTitle:@"4" forState:UIControlStateNormal];
    [space11 setTitle:@"7" forState:UIControlStateNormal];
    [space12 setTitle:@"9" forState:UIControlStateNormal];
    [space13 setTitle:@"6" forState:UIControlStateNormal];
    [space14 setTitle:@"2" forState:UIControlStateNormal];
    [space15 setTitle:@"3" forState:UIControlStateNormal];
    [space16 setTitle:@"8" forState:UIControlStateNormal];
    [space17 setTitle:@"1" forState:UIControlStateNormal];
    [space18 setTitle:@"5" forState:UIControlStateNormal];
    [space19 setTitle:@"8" forState:UIControlStateNormal];
    [space120 setTitle:@"2" forState:UIControlStateNormal];
    [space121 setTitle:@"5" forState:UIControlStateNormal];
    [space122 setTitle:@"4" forState:UIControlStateNormal];
    [space123 setTitle:@"1" forState:UIControlStateNormal];
    [space124 setTitle:@"7" forState:UIControlStateNormal];
    [space125 setTitle:@"3" forState:UIControlStateNormal];
    [space126 setTitle:@"6" forState:UIControlStateNormal];
    [space127 setTitle:@"9" forState:UIControlStateNormal];
    [space128 setTitle:@"5" forState:UIControlStateNormal];
    [space129 setTitle:@"9" forState:UIControlStateNormal];
    [space130 setTitle:@"3" forState:UIControlStateNormal];
    [space131 setTitle:@"6" forState:UIControlStateNormal];
    [space132 setTitle:@"2" forState:UIControlStateNormal];
    [space133 setTitle:@"4" forState:UIControlStateNormal];
    [space134 setTitle:@"1" forState:UIControlStateNormal];
    [space135 setTitle:@"8" forState:UIControlStateNormal];
    [space136 setTitle:@"7" forState:UIControlStateNormal];
    [space137 setTitle:@"1" forState:UIControlStateNormal];
    [space138 setTitle:@"4" forState:UIControlStateNormal];
    [space139 setTitle:@"7" forState:UIControlStateNormal];
    [space140 setTitle:@"3" forState:UIControlStateNormal];
    [space141 setTitle:@"5" forState:UIControlStateNormal];
    [space142 setTitle:@"8" forState:UIControlStateNormal];
    [space143 setTitle:@"9" forState:UIControlStateNormal];
    [space144 setTitle:@"6" forState:UIControlStateNormal];
    [space145 setTitle:@"2" forState:UIControlStateNormal];
    [space146 setTitle:@"6" forState:UIControlStateNormal];
    [space147 setTitle:@"8" forState:UIControlStateNormal];
    [space148 setTitle:@"2" forState:UIControlStateNormal];
    [space149 setTitle:@"9" forState:UIControlStateNormal];
    [space150 setTitle:@"7" forState:UIControlStateNormal];
    [space151 setTitle:@"1" forState:UIControlStateNormal];
    [space152 setTitle:@"5" forState:UIControlStateNormal];
    [space153 setTitle:@"3" forState:UIControlStateNormal];
    [space154 setTitle:@"4" forState:UIControlStateNormal];
    [space155 setTitle:@"7" forState:UIControlStateNormal];
    [space156 setTitle:@"3" forState:UIControlStateNormal];
    [space157 setTitle:@"5" forState:UIControlStateNormal];
    [space158 setTitle:@"2" forState:UIControlStateNormal];
    [space159 setTitle:@"1" forState:UIControlStateNormal];
    [space160 setTitle:@"8" forState:UIControlStateNormal];
    [space161 setTitle:@"9" forState:UIControlStateNormal];
    [space162 setTitle:@"4" forState:UIControlStateNormal];
    [space163 setTitle:@"6" forState:UIControlStateNormal];
    [space164 setTitle:@"2" forState:UIControlStateNormal];
    [space165 setTitle:@"9" forState:UIControlStateNormal];
    [space166 setTitle:@"6" forState:UIControlStateNormal];
    [space167 setTitle:@"5" forState:UIControlStateNormal];
    [space168 setTitle:@"3" forState:UIControlStateNormal];
    [space169 setTitle:@"4" forState:UIControlStateNormal];
    [space170 setTitle:@"7" forState:UIControlStateNormal];
    [space171 setTitle:@"8" forState:UIControlStateNormal];
    [space172 setTitle:@"1" forState:UIControlStateNormal];
    [space173 setTitle:@"1" forState:UIControlStateNormal];
    [space174 setTitle:@"4" forState:UIControlStateNormal];
    [space175 setTitle:@"8" forState:UIControlStateNormal];
    [space176 setTitle:@"7" forState:UIControlStateNormal];
    [space177 setTitle:@"9" forState:UIControlStateNormal];
    [space178 setTitle:@"6" forState:UIControlStateNormal];
    [space179 setTitle:@"2" forState:UIControlStateNormal];
    [space180 setTitle:@"5" forState:UIControlStateNormal];
    [space181 setTitle:@"3" forState:UIControlStateNormal];
    
    
    
}




-(void)board5{
    
    [space1 setTitle:@"1" forState:UIControlStateNormal];
    [space2 setTitle:@"4" forState:UIControlStateNormal];
    [space3 setTitle:@"8" forState:UIControlStateNormal];
    [space4 setTitle:@"6" forState:UIControlStateNormal];
    [space5 setTitle:@"9" forState:UIControlStateNormal];
    [space6 setTitle:@"7" forState:UIControlStateNormal];
    [space7 setTitle:@"3" forState:UIControlStateNormal];
    [space8 setTitle:@"2" forState:UIControlStateNormal];
    [space9 setTitle:@"5" forState:UIControlStateNormal];
    [space10 setTitle:@"3" forState:UIControlStateNormal];
    [space11 setTitle:@"7" forState:UIControlStateNormal];
    [space12 setTitle:@"5" forState:UIControlStateNormal];
    [space13 setTitle:@"8" forState:UIControlStateNormal];
    [space14 setTitle:@"1" forState:UIControlStateNormal];
    [space15 setTitle:@"2" forState:UIControlStateNormal];
    [space16 setTitle:@"6" forState:UIControlStateNormal];
    [space17 setTitle:@"4" forState:UIControlStateNormal];
    [space18 setTitle:@"9" forState:UIControlStateNormal];
    [space19 setTitle:@"9" forState:UIControlStateNormal];
    [space120 setTitle:@"2" forState:UIControlStateNormal];
    [space121 setTitle:@"6" forState:UIControlStateNormal];
    [space122 setTitle:@"4" forState:UIControlStateNormal];
    [space123 setTitle:@"3" forState:UIControlStateNormal];
    [space124 setTitle:@"5" forState:UIControlStateNormal];
    [space125 setTitle:@"1" forState:UIControlStateNormal];
    [space126 setTitle:@"8" forState:UIControlStateNormal];
    [space127 setTitle:@"7" forState:UIControlStateNormal];
    [space128 setTitle:@"8" forState:UIControlStateNormal];
    [space129 setTitle:@"5" forState:UIControlStateNormal];
    [space130 setTitle:@"6" forState:UIControlStateNormal];
    [space131 setTitle:@"2" forState:UIControlStateNormal];
    [space132 setTitle:@"1" forState:UIControlStateNormal];
    [space133 setTitle:@"3" forState:UIControlStateNormal];
    [space134 setTitle:@"9" forState:UIControlStateNormal];
    [space135 setTitle:@"7" forState:UIControlStateNormal];
    [space136 setTitle:@"4" forState:UIControlStateNormal];
    [space137 setTitle:@"7" forState:UIControlStateNormal];
    [space138 setTitle:@"2" forState:UIControlStateNormal];
    [space139 setTitle:@"1" forState:UIControlStateNormal];
    [space140 setTitle:@"4" forState:UIControlStateNormal];
    [space141 setTitle:@"9" forState:UIControlStateNormal];
    [space142 setTitle:@"6" forState:UIControlStateNormal];
    [space143 setTitle:@"5" forState:UIControlStateNormal];
    [space144 setTitle:@"8" forState:UIControlStateNormal];
    [space145 setTitle:@"3" forState:UIControlStateNormal];
    [space146 setTitle:@"3" forState:UIControlStateNormal];
    [space147 setTitle:@"9" forState:UIControlStateNormal];
    [space148 setTitle:@"4" forState:UIControlStateNormal];
    [space149 setTitle:@"7" forState:UIControlStateNormal];
    [space150 setTitle:@"5" forState:UIControlStateNormal];
    [space151 setTitle:@"8" forState:UIControlStateNormal];
    [space152 setTitle:@"2" forState:UIControlStateNormal];
    [space153 setTitle:@"6" forState:UIControlStateNormal];
    [space154 setTitle:@"1" forState:UIControlStateNormal];
    [space155 setTitle:@"7" forState:UIControlStateNormal];
    [space156 setTitle:@"8" forState:UIControlStateNormal];
    [space157 setTitle:@"2" forState:UIControlStateNormal];
    [space158 setTitle:@"5" forState:UIControlStateNormal];
    [space159 setTitle:@"6" forState:UIControlStateNormal];
    [space160 setTitle:@"1" forState:UIControlStateNormal];
    [space161 setTitle:@"4" forState:UIControlStateNormal];
    [space162 setTitle:@"3" forState:UIControlStateNormal];
    [space163 setTitle:@"9" forState:UIControlStateNormal];
    [space164 setTitle:@"9" forState:UIControlStateNormal];
    [space165 setTitle:@"5" forState:UIControlStateNormal];
    [space166 setTitle:@"4" forState:UIControlStateNormal];
    [space167 setTitle:@"2" forState:UIControlStateNormal];
    [space168 setTitle:@"3" forState:UIControlStateNormal];
    [space169 setTitle:@"7" forState:UIControlStateNormal];
    [space170 setTitle:@"1" forState:UIControlStateNormal];
    [space171 setTitle:@"6" forState:UIControlStateNormal];
    [space172 setTitle:@"8" forState:UIControlStateNormal];
    [space173 setTitle:@"6" forState:UIControlStateNormal];
    [space174 setTitle:@"1" forState:UIControlStateNormal];
    [space175 setTitle:@"3" forState:UIControlStateNormal];
    [space176 setTitle:@"8" forState:UIControlStateNormal];
    [space177 setTitle:@"4" forState:UIControlStateNormal];
    [space178 setTitle:@"9" forState:UIControlStateNormal];
    [space179 setTitle:@"5" forState:UIControlStateNormal];
    [space180 setTitle:@"7" forState:UIControlStateNormal];
    [space181 setTitle:@"2" forState:UIControlStateNormal];
    
    
    
}


-(void)board6{
    
    [space1 setTitle:@"2" forState:UIControlStateNormal];
    [space2 setTitle:@"8" forState:UIControlStateNormal];
    [space3 setTitle:@"6" forState:UIControlStateNormal];
    [space4 setTitle:@"7" forState:UIControlStateNormal];
    [space5 setTitle:@"1" forState:UIControlStateNormal];
    [space6 setTitle:@"4" forState:UIControlStateNormal];
    [space7 setTitle:@"9" forState:UIControlStateNormal];
    [space8 setTitle:@"3" forState:UIControlStateNormal];
    [space9 setTitle:@"5" forState:UIControlStateNormal];
    [space10 setTitle:@"9" forState:UIControlStateNormal];
    [space11 setTitle:@"4" forState:UIControlStateNormal];
    [space12 setTitle:@"5" forState:UIControlStateNormal];
    [space13 setTitle:@"6" forState:UIControlStateNormal];
    [space14 setTitle:@"3" forState:UIControlStateNormal];
    [space15 setTitle:@"2" forState:UIControlStateNormal];
    [space16 setTitle:@"7" forState:UIControlStateNormal];
    [space17 setTitle:@"8" forState:UIControlStateNormal];
    [space18 setTitle:@"1" forState:UIControlStateNormal];
    [space19 setTitle:@"1" forState:UIControlStateNormal];
    [space120 setTitle:@"7" forState:UIControlStateNormal];
    [space121 setTitle:@"3" forState:UIControlStateNormal];
    [space122 setTitle:@"9" forState:UIControlStateNormal];
    [space123 setTitle:@"5" forState:UIControlStateNormal];
    [space124 setTitle:@"8" forState:UIControlStateNormal];
    [space125 setTitle:@"4" forState:UIControlStateNormal];
    [space126 setTitle:@"2" forState:UIControlStateNormal];
    [space127 setTitle:@"6" forState:UIControlStateNormal];
    [space128 setTitle:@"4" forState:UIControlStateNormal];
    [space129 setTitle:@"2" forState:UIControlStateNormal];
    [space130 setTitle:@"7" forState:UIControlStateNormal];
    [space131 setTitle:@"6" forState:UIControlStateNormal];
    [space132 setTitle:@"5" forState:UIControlStateNormal];
    [space133 setTitle:@"8" forState:UIControlStateNormal];
    [space134 setTitle:@"1" forState:UIControlStateNormal];
    [space135 setTitle:@"9" forState:UIControlStateNormal];
    [space136 setTitle:@"3" forState:UIControlStateNormal];
    [space137 setTitle:@"3" forState:UIControlStateNormal];
    [space138 setTitle:@"5" forState:UIControlStateNormal];
    [space139 setTitle:@"6" forState:UIControlStateNormal];
    [space140 setTitle:@"1" forState:UIControlStateNormal];
    [space141 setTitle:@"9" forState:UIControlStateNormal];
    [space142 setTitle:@"7" forState:UIControlStateNormal];
    [space143 setTitle:@"4" forState:UIControlStateNormal];
    [space144 setTitle:@"2" forState:UIControlStateNormal];
    [space145 setTitle:@"8" forState:UIControlStateNormal];
    [space146 setTitle:@"8" forState:UIControlStateNormal];
    [space147 setTitle:@"1" forState:UIControlStateNormal];
    [space148 setTitle:@"9" forState:UIControlStateNormal];
    [space149 setTitle:@"3" forState:UIControlStateNormal];
    [space150 setTitle:@"4" forState:UIControlStateNormal];
    [space151 setTitle:@"2" forState:UIControlStateNormal];
    [space152 setTitle:@"7" forState:UIControlStateNormal];
    [space153 setTitle:@"6" forState:UIControlStateNormal];
    [space154 setTitle:@"5" forState:UIControlStateNormal];
    [space155 setTitle:@"3" forState:UIControlStateNormal];
    [space156 setTitle:@"6" forState:UIControlStateNormal];
    [space157 setTitle:@"1" forState:UIControlStateNormal];
    [space158 setTitle:@"5" forState:UIControlStateNormal];
    [space159 setTitle:@"4" forState:UIControlStateNormal];
    [space160 setTitle:@"2" forState:UIControlStateNormal];
    [space161 setTitle:@"8" forState:UIControlStateNormal];
    [space162 setTitle:@"7" forState:UIControlStateNormal];
    [space163 setTitle:@"9" forState:UIControlStateNormal];
    [space164 setTitle:@"5" forState:UIControlStateNormal];
    [space165 setTitle:@"7" forState:UIControlStateNormal];
    [space166 setTitle:@"9" forState:UIControlStateNormal];
    [space167 setTitle:@"8" forState:UIControlStateNormal];
    [space168 setTitle:@"1" forState:UIControlStateNormal];
    [space169 setTitle:@"3" forState:UIControlStateNormal];
    [space170 setTitle:@"2" forState:UIControlStateNormal];
    [space171 setTitle:@"6" forState:UIControlStateNormal];
    [space172 setTitle:@"4" forState:UIControlStateNormal];
    [space173 setTitle:@"2" forState:UIControlStateNormal];
    [space174 setTitle:@"8" forState:UIControlStateNormal];
    [space175 setTitle:@"4" forState:UIControlStateNormal];
    [space176 setTitle:@"6" forState:UIControlStateNormal];
    [space177 setTitle:@"9" forState:UIControlStateNormal];
    [space178 setTitle:@"7" forState:UIControlStateNormal];
    [space179 setTitle:@"5" forState:UIControlStateNormal];
    [space180 setTitle:@"3" forState:UIControlStateNormal];
    [space181 setTitle:@"1" forState:UIControlStateNormal];

    
    
}

*/

    

    
    






- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
