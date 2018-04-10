//
//  moveSquares.m
//  speedsquare
//
//  Created by Steven Grutman on 7/29/15.
//  Copyright (c) 2015 Steven Grutman. All rights reserved.
//

#import <Foundation/Foundation.h>

-(void)moveSquares{
    //    for(int ooo = 0; ooo < 24; ooo++){
    //        tempOb = [trickster objectAtIndex:ooo];
    //        square1.center = CGPointMake(square1.center.x -1, square1.center.y);
    //        if (square1.center.x < -25) {
    //            square1.center = CGPointMake(345, square1.center.y);
    //            UIImage *buttonImage1 = [UIImage imageNamed:@""];
    //            [square1 setImage:buttonImage1 forState:UIControlStateNormal];
    //
    //            max = 12;
    //            [self changeColor];
    ////          (randomColor)  = tempInt;
    //            square1.backgroundColor = tempColor;
    //
    //        }
    //    }
    //tempOb, tempNum, arrays solution WITH 2 DIFFERENT METHODS FOR DIFFERNT GROUPING OF DIRECTION MOVEMENT
    
    
    square1.center = CGPointMake(square1.center.x -1, square1.center.y);
    if (square1.center.x < -25) {
        square1.center = CGPointMake(345, square1.center.y);
        UIImage *buttonImage25 = [UIImage imageNamed:@""];
        [square1 setImage:buttonImage25 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor1 = tempInt;
        square1.backgroundColor = tempColor;
        
    }
    square2.center = CGPointMake(square2.center.x -1, square2.center.y);
    if (square2.center.x < -25) {
        square2.center = CGPointMake(345, square2.center.y);
        UIImage *buttonImage25 = [UIImage imageNamed:@""];
        [square2 setImage:buttonImage25 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor2 = tempInt;
        square2.backgroundColor = tempColor;
        
    }
    square3.center = CGPointMake(square3.center.x -1, square3.center.y);
    if (square3.center.x < -25) {
        square3.center = CGPointMake(345, square3.center.y);
        UIImage *buttonImage26 = [UIImage imageNamed:@""];
        [square3 setImage:buttonImage26 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor3 = tempInt;
        square3.backgroundColor = tempColor;
        
    }
    square4.center = CGPointMake(square4.center.x -1, square4.center.y);
    if (square4.center.x < -25) {
        square4.center = CGPointMake(345, square4.center.y);
        UIImage *buttonImage27 = [UIImage imageNamed:@""];
        [square4 setImage:buttonImage27 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor4 = tempInt;
        square4.backgroundColor = tempColor;
        
    }
    square5.center = CGPointMake(square5.center.x -1, square5.center.y);
    if (square5.center.x < -25) {
        square5.center = CGPointMake(345, square5.center.y);
        UIImage *buttonImage28 = [UIImage imageNamed:@""];
        [square5 setImage:buttonImage28 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor5 = tempInt;
        square5.backgroundColor = tempColor;
        
    }
    square6.center = CGPointMake(square6.center.x -1, square6.center.y);
    if (square6.center.x < -25) {
        square6.center = CGPointMake(345, square6.center.y);
        UIImage *buttonImage29 = [UIImage imageNamed:@""];
        [square6 setImage:buttonImage29 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor6 = tempInt;
        square6.backgroundColor = tempColor;
        
    }
    square7.center = CGPointMake(square7.center.x +1, square7.center.y);
    if (square7.center.x > 345) {
        square7.center = CGPointMake(-25, square7.center.y);
        UIImage *buttonImage30 = [UIImage imageNamed:@""];
        [square7 setImage:buttonImage30 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor7 = tempInt;
        square7.backgroundColor = tempColor;
        
    }
    square8.center = CGPointMake(square8.center.x +1, square8.center.y);
    if (square8.center.x > 345) {
        square8.center = CGPointMake(-25, square8.center.y);
        UIImage *buttonImage31 = [UIImage imageNamed:@""];
        [square8 setImage:buttonImage31 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor8 = tempInt;
        square8.backgroundColor = tempColor;
        
    }
    square9.center = CGPointMake(square9.center.x +1, square9.center.y);
    if (square9.center.x > 345) {
        square9.center = CGPointMake(-25, square9.center.y);
        UIImage *buttonImage32 = [UIImage imageNamed:@""];
        [square9 setImage:buttonImage32 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor9 = tempInt;
        square9.backgroundColor = tempColor;
        
    }
    square10.center = CGPointMake(square10.center.x +1, square10.center.y);
    if (square10.center.x > 345) {
        square10.center = CGPointMake(-25, square10.center.y);
        UIImage *buttonImage33 = [UIImage imageNamed:@""];
        [square10 setImage:buttonImage33 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor10 = tempInt;
        square10.backgroundColor = tempColor;
        
    }
    square11.center = CGPointMake(square11.center.x +1, square11.center.y);
    if (square11.center.x > 345) {
        square11.center = CGPointMake(-25, square11.center.y);
        UIImage *buttonImage34 = [UIImage imageNamed:@""];
        [square11 setImage:buttonImage34 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor11 = tempInt;
        square11.backgroundColor = tempColor;
        
    }
    square12.center = CGPointMake(square12.center.x +1, square12.center.y);
    if (square12.center.x > 345) {
        square12.center = CGPointMake(-25, square12.center.y);
        UIImage *buttonImage35 = [UIImage imageNamed:@""];
        [square12 setImage:buttonImage35 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor12 = tempInt;
        square12.backgroundColor = tempColor;
        
    }
    square13.center = CGPointMake(square13.center.x -1, square13.center.y);
    if (square13.center.x < -25) {
        square13.center = CGPointMake(345, square13.center.y);
        UIImage *buttonImage36 = [UIImage imageNamed:@""];
        [square13 setImage:buttonImage36 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor13 = tempInt;
        square13.backgroundColor = tempColor;
    }
    square14.center = CGPointMake(square14.center.x -1, square14.center.y);
    if (square14.center.x < -25) {
        square14.center = CGPointMake(345, square14.center.y);
        UIImage *buttonImage37 = [UIImage imageNamed:@""];
        [square14 setImage:buttonImage37 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor14 = tempInt;
        square14.backgroundColor = tempColor;
        
    }
    square15.center = CGPointMake(square15.center.x -1, square15.center.y);
    if (square15.center.x < -25) {
        square15.center = CGPointMake(345, square15.center.y);
        UIImage *buttonImage38 = [UIImage imageNamed:@""];
        [square15 setImage:buttonImage38 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor15 = tempInt;
        square15.backgroundColor = tempColor;
        
    }
    square16.center = CGPointMake(square16.center.x -1, square16.center.y);
    if (square16.center.x < -25) {
        square16.center = CGPointMake(345, square16.center.y);
        UIImage *buttonImage39 = [UIImage imageNamed:@""];
        [square16 setImage:buttonImage39 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor16 = tempInt;
        square16.backgroundColor = tempColor;
        
    }
    square17.center = CGPointMake(square17.center.x -1, square17.center.y);
    if (square17.center.x < -25) {
        square17.center = CGPointMake(345, square17.center.y);
        UIImage *buttonImage40 = [UIImage imageNamed:@""];
        [square17 setImage:buttonImage40 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor17 = tempInt;
        square17.backgroundColor = tempColor;
        
    }
    square18.center = CGPointMake(square18.center.x -1, square18.center.y);
    if (square18.center.x < -25) {
        square18.center = CGPointMake(345, square18.center.y);
        UIImage *buttonImage41 = [UIImage imageNamed:@""];
        [square18 setImage:buttonImage41 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor18 = tempInt;
        square18.backgroundColor = tempColor;
        
    }
    square19.center = CGPointMake(square19.center.x +1, square19.center.y);
    if (square19.center.x > 345) {
        square19.center = CGPointMake(-25, square19.center.y);
        UIImage *buttonImage42 = [UIImage imageNamed:@""];
        [square19 setImage:buttonImage42 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor19 = tempInt;
        square19.backgroundColor = tempColor;
        
    }
    square20.center = CGPointMake(square20.center.x +1, square20.center.y);
    if (square20.center.x > 345) {
        square20.center = CGPointMake(-25, square20.center.y);
        UIImage *buttonImage43 = [UIImage imageNamed:@""];
        [square20 setImage:buttonImage43 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor20 = tempInt;
        square20.backgroundColor = tempColor;
        
    }
    square21.center = CGPointMake(square21.center.x +1, square21.center.y);
    if (square21.center.x > 345) {
        square21.center = CGPointMake(-25, square21.center.y);
        UIImage *buttonImage44 = [UIImage imageNamed:@""];
        [square21 setImage:buttonImage44 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor21 = tempInt;
        square21.backgroundColor = tempColor;
        
    }
    square22.center = CGPointMake(square22.center.x +1, square22.center.y);
    if (square22.center.x > 345) {
        square22.center = CGPointMake(-25, square22.center.y);
        UIImage *buttonImage45 = [UIImage imageNamed:@""];
        [square22 setImage:buttonImage45 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor22 = tempInt;
        square22.backgroundColor = tempColor;
        
    }
    square23.center = CGPointMake(square23.center.x +1, square23.center.y);
    if (square23.center.x > 345) {
        square23.center = CGPointMake(-25, square23.center.y);
        UIImage *buttonImage46 = [UIImage imageNamed:@""];
        [square23 setImage:buttonImage46 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor23 = tempInt;
        square23.backgroundColor = tempColor;
        
    }
    square24.center = CGPointMake(square24.center.x +1, square24.center.y);
    if (square24.center.x > 345) {
        square24.center = CGPointMake(-25, square24.center.y);
        UIImage *buttonImage47 = [UIImage imageNamed:@""];
        [square24 setImage:buttonImage47 forState:UIControlStateNormal];
        
        max = 12;
        [self changeColor];
        randomColor24 = tempInt;
        square24.backgroundColor = tempColor;
        
    }
}
