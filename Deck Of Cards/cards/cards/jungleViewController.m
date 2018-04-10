//
//  jungleViewController.m
//  cards
//
//  Created by Steven Grutman on 2/20/13.
//  Copyright (c) 2013 Steven Grutman. All rights reserved.
//

#import "jungleViewController.h"
#import "QuartzCore/QuartzCore.h"

@interface jungleViewController ()



@end

@interface hii :UIView

-(void)bringSubviewToFront:(UIView *)idk;

@end

@implementation jungleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    cards = [NSArray arrayWithObjects:H2, H3, H4, H5, H6, H7, H8, H9, H10, HJ, HQ, HK, HA, s2, s3, s4, s5, s6, s7, s8, s9, s10, sJ, sQ, sK, sA, C2, C3, C4, C5, C6, C7, C8, C9, C10, CJ, CQ, CK, CA, D2, D3, D4, D5, D6, D7, D8, D9, D10, DJ, DQ, DK, DA, nil];
    ints = [NSArray arrayWithObjects:st1, st2, st3, st4, st5, st6, st7, st8, st9, st10, st11, st12, st13, st14, st15, st16, st17, st18, st19, st20, st21, st22, st23, st24, st25, st26, st27, st28, st29, st30, st31, st32, st33, st34, st35, st36, st37, st38, st39, st40, st41, st42, st43, st44, st45, st46, st47, st48, st49, st50, st51, st52, nil];
    
    [cursor setTitle:@"" forState:UIControlStateNormal];
	// Do any additional setup after loading the view, typically from a nib.
}


-(IBAction)ggg{
        
    for (i = 0; i <= 51; i++) {
        idk = [cards objectAtIndex:i];
        idk.center = CGPointMake(240, 160);
        [idk setImage:[UIImage imageNamed:@"back.png"]];
    }
    
    for (i = 0; i <= 51; i++) {
        idk = [ints objectAtIndex:i];
        idk.center = CGPointMake(1000, 10000);
        [idk setImage:[UIImage imageNamed:@""]];
    }
    
    a1 = 0;
    a2 = 0;
    a3 = 0;
    a4 = 0;
    a5 = 0;
    a6 = 0;
    a7 = 0;
    a8 = 0;
    a9 = 0;
    a10 = 0;
    a11 = 0;
    a12 = 0;
    a13 = 0;
    a14 = 0;
    a15 = 0;
    a16 = 0;
    a17 = 0;
    a18 = 0;
    a19 = 0;
    a20 = 0;
    a21 = 0;
    a22 = 0;
    a23 = 0;
    a24 = 0;
    a25 = 0;
    a26 = 0;
    a27 = 0;
    a28 = 0;
    a29 = 0;
    a30 = 0;
    a31 = 0;
    a32 = 0;
    a33 = 0;
    a34 = 0;
    a35 = 0;
    a36 = 0;
    a37 = 0;
    a38 = 0;
    a39 = 0;
    a40 = 0;
    a41 = 0;
    a42 = 0;
    a43 = 0;
    a44 = 0;
    a45 = 0;
    a46 = 0;
    a47 = 0;
    a48 = 0;
    a49 = 0;
    a50 = 0;
    a51 = 0;
    a52 = 0;
    
    /*aa = 0;
    for (i = 0; i <= 500; i++) {
        bb = (random() % 52) + 1;
        pie = [ints objectAtIndex:bb];
        if (pie.intValue == 0) {
           aa++;
           // pie.intValue == aa;
        }
    }
    
    for (i = 0; i <= 500; i++) {
        pie = [ints objectAtIndex:i];
        NSLog([NSString stringWithFormat:@"%d", pie.intValue]);
    }*/
    
    ee = 0;
    
    while (ee <= 51){
        NSLog([NSString stringWithFormat:@"%d", ee]);
        cc = random() % 52;
        idk = [ints objectAtIndex:ee];
     
            if (cc == 0){
                [idk setImage:[UIImage imageNamed:@"ace.png"]];
            }
            if (cc == 1){
                [idk setImage:[UIImage imageNamed:@"2s.png"]];
            }
            if (cc == 2){
                [idk setImage:[UIImage imageNamed:@"3s.png"]];
            }
            if (cc == 3){
                [idk setImage:[UIImage imageNamed:@"4s.png"]];
            }
            if (cc == 4){
                [idk setImage:[UIImage imageNamed:@"5s.png"]];
            }
            if (cc == 5){
                [idk setImage:[UIImage imageNamed:@"6s.png"]];
            }
            if (cc == 6){
                [idk setImage:[UIImage imageNamed:@"7s.png"]];
            }
            if (cc == 7){
                [idk setImage:[UIImage imageNamed:@"8s.png"]];
            }
            if (cc == 8){
              [idk setImage:[UIImage imageNamed:@"9s.png"]];
            }
            if (cc == 9){
              [idk setImage:[UIImage imageNamed:@"10s.png"]];
            }
            if (cc == 10){
                [idk setImage:[UIImage imageNamed:@"Js.png"]];
            }
            if (cc == 11){
                [idk setImage:[UIImage imageNamed:@"Qs.png"]];
            }
            if (cc == 12){
                [idk setImage:[UIImage imageNamed:@"Ks.png"]];
            }
            if (cc == 13){
               [idk setImage:[UIImage imageNamed:@"AH.png"]];
            }
            if (cc == 14){
                [idk setImage:[UIImage imageNamed:@"2H.png"]];
            }
            if (cc == 15){
                [idk setImage:[UIImage imageNamed:@"3H.png"]];
            }
            if (cc == 16){
                [idk setImage:[UIImage imageNamed:@"4H.png"]];
            }
            if (cc == 17){
                [idk setImage:[UIImage imageNamed:@"5H.png"]];
            }
            if (cc == 18){
                [idk setImage:[UIImage imageNamed:@"6H.png"]];
            }
            if (cc == 19){
                [idk setImage:[UIImage imageNamed:@"7H.png"]];
            }
            if (cc == 20){
                [idk setImage:[UIImage imageNamed:@"8H.png"]];
            }
            if (cc == 21){
                [idk setImage:[UIImage imageNamed:@"9H.png"]];
            }
            if (cc == 22){
                [idk setImage:[UIImage imageNamed:@"10H.png"]];
            }
            if (cc == 23){
                [idk setImage:[UIImage imageNamed:@"JH.png"]];
            }
            if (cc == 24){
                [idk setImage:[UIImage imageNamed:@"QH.png"]];
            }
            if (cc == 25){
               [idk setImage:[UIImage imageNamed:@"KH.png"]];
            }
        
        if (cc == 26){
            [idk setImage:[UIImage imageNamed:@"AD.png"]];
        }
        if (cc == 27){
            [idk setImage:[UIImage imageNamed:@"2D.png"]];
        }
        if (cc == 28){
            [idk setImage:[UIImage imageNamed:@"3D.png"]];
        }
        if (cc == 29){
            [idk setImage:[UIImage imageNamed:@"4D.png"]];
        }
        if (cc == 30){
            [idk setImage:[UIImage imageNamed:@"5D.png"]];
        }
        if (cc == 31){
            [idk setImage:[UIImage imageNamed:@"6D.png"]];
        }
        if (cc == 32){
            [idk setImage:[UIImage imageNamed:@"7D.png"]];
        }
        if (cc == 33){
            [idk setImage:[UIImage imageNamed:@"8D.png"]];
        }
        if (cc == 34){
            [idk setImage:[UIImage imageNamed:@"9D.png"]];
        }
        if (cc == 35){
            [idk setImage:[UIImage imageNamed:@"10D.png"]];
        }
        if (cc == 36){
            [idk setImage:[UIImage imageNamed:@"JD.png"]];
        }
        if (cc == 37){
            [idk setImage:[UIImage imageNamed:@"QD.png"]];
        }
        if (cc == 38){
            [idk setImage:[UIImage imageNamed:@"KD.png"]];
        }
        if (cc == 39){
            [idk setImage:[UIImage imageNamed:@"AC.png"]];
        }
        if (cc == 40){
            [idk setImage:[UIImage imageNamed:@"2C.png"]];
        }
        if (cc == 41){
            [idk setImage:[UIImage imageNamed:@"3C.png"]];
        }
        if (cc == 42){
            [idk setImage:[UIImage imageNamed:@"4C.png"]];
        }
        if (cc == 43){
            [idk setImage:[UIImage imageNamed:@"5C.png"]];
        }
        if (cc == 44){
            [idk setImage:[UIImage imageNamed:@"6C.png"]];
        }
        if (cc == 45){
            [idk setImage:[UIImage imageNamed:@"7C.png"]];
        }
        if (cc == 46){
            [idk setImage:[UIImage imageNamed:@"8C.png"]];
        }
        if (cc == 47){
            [idk setImage:[UIImage imageNamed:@"9C.png"]];
        }
        if (cc == 48){
            [idk setImage:[UIImage imageNamed:@"10C.png"]];
        }
        if (cc == 49){
            [idk setImage:[UIImage imageNamed:@"JC.png"]];
        }
        if (cc == 50){
            [idk setImage:[UIImage imageNamed:@"QC.png"]];
        }
        if (cc == 51){
            [idk setImage:[UIImage imageNamed:@"KC.png"]];
        }
            dd = 0;
            gg = 0;
        
       
        
            for (ff = 0; ff <= 25; ff++) {
                idk2 = [ints objectAtIndex:ff];
                if ([idk2.image isEqual:idk.image] && idk != idk2) {
                    gg = 1;
                }
            }
        if (gg == 0) {
            ee++;
        }
            
        }
    
tt = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(ghgh) userInfo:nil repeats:NO];

    }


-(IBAction)gggU{
    
    [self ggg];
    
    for (ff = 0; ff <= 25; ff++) {
        idk = [cards objectAtIndex:ff];
        idk2 = [ints objectAtIndex:ff];
        [idk setImage:idk2.image];
    }
    
    a1 = 1;
    a2 = 1;
    a3 = 1;
    a4 = 1;
    a5 = 1;
    a6 = 1;
    a7 = 1;
    a8 = 1;
    a9 = 1;
    a10 = 1;
    a11 = 1;
    a12 = 1;
    a13 = 1;
    a14 = 1;
    a15 = 1;
    a16 = 1;
    a17 = 1;
    a18 = 1;
    a19 = 1;
    a20 = 1;
    a21 = 1;
    a22 = 1;
    a23 = 1;
    a24 = 1;
    a25 = 1;
    a26 = 1;
    a27 = 1;
    a28 = 1;
    a29 = 1;
    a30 = 1;
    a31 = 1;
    a32 = 1;
    a33 = 1;
    a34 = 1;
    a35 = 1;
    a36 = 1;
    a37 = 1;
    a38 = 1;
    a39 = 1;
    a40 = 1;
    a41 = 1;
    a42 = 1;
    a43 = 1;
    a44 = 1;
    a45 = 1;
    a46 = 1;
    a47 = 1;
    a48 = 1;
    a49 = 1;
    a50 = 1;
    a51 = 1;
    a52 = 1;

    
}



    

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *myTouch = [[event allTouches] anyObject];
    cursor.center = [myTouch locationInView:self.view];
    
    bbbb++;
    if (bbbb == 1) {
        hi = cursor.center;
    }
    if (bbbb == 2) {
        his = cursor.center;
    }
    
    for (aa = 0; aa <= 51; aa++) {
        idk = [cards objectAtIndex:aa];
        if (CGRectIntersectsRect(idk.frame, cursor.frame)) {
            aa = 53;
            ppp = idk.center;
            ooo = sJ.center;
            idk.center = ooo;
            sJ.center = ppp;
            swap1.image = idk.image;
            swap2.image = sJ.image;
            idk.image = swap2.image;
            sJ.image = swap1.image;
            sJ.center = cursor.center;
        }
    }
    
    if (timer == 0){
    stopWatch = [NSTimer scheduledTimerWithTimeInterval:.01 target:self selector:@selector(timeIt) userInfo:nil repeats:YES];
    }
    
}


-(void)timeIt{
    
    timer++;
    if (timer == 25) {
        if (bbbb >= 2 && abs(hi.x - his.x) <= 10 && abs(hi.y - his.y) <= 10){
        [stopWatch invalidate];
        [self flip];
           
        bbbb = 0;
        timer = 0;
    }else{
         [stopWatch invalidate];
        bbbb = 0;
        timer = 0;
    }
}

}


-(void)ghgh{
    for (i = 0; i <= 51; i++) {
        idk = [cards objectAtIndex:i];
        idk.center = CGPointMake(240, 160);
        //[idk setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
    yuyu++;
    if (yuyu > 300) {
        [tt invalidate];
    }
}





-(void)flip{
    NSLog(@"j");
    
    for (ijij = 0; ijij <= 51; ijij++) {
        idk = [cards objectAtIndex:ijij];
        if (CGRectIntersectsRect(cursor.frame, idk.frame)) {
            [idk setImage:[UIImage imageNamed:@"back.png"]];
            if (ijij == 0) {
                if (a1%2 == 0) {
                    [idk setImage:st1.image];
                }
                a1++;
            }
            if (ijij == 1) {
                if (a2%2 == 0) {
                    [idk setImage:st2.image];
                }
                a2++;
            }
            if (ijij == 2) {
            if (a3%2 == 0) {
            [idk setImage:st3.image];
            }
                a3++;
            }
            if (ijij == 3) {
                if (a4%2 == 0) {
                    [idk setImage:st4.image];
                }
                a4++;
            }
            if (ijij == 4) {
                if (a5%2 == 0) {
                    [idk setImage:st5.image];
                }
                a5++;
            }
            if (ijij == 5) {
                if (a6%2 == 0) {
                    [idk setImage:st6.image];
                }
                a6++;
            }
            if (ijij == 6) {
                if (a7%2 == 0) {
                    [idk setImage:st7.image];
                }
                a7++;
            }
            if (ijij == 7) {
                if (a8%2 == 0) {
                    [idk setImage:st8.image];
                }
                a8++;
            }
            if (ijij == 8) {
                if (a9%2 == 0) {
                    [idk setImage:st9.image];
                }
                a9++;
            }
            if (ijij == 9) {
                if (a10%2 == 0) {
                    [idk setImage:st10.image];
                }
                a10++;
            }
            if (ijij == 10) {
                if (a11%2 == 0) {
                    [idk setImage:st11.image];
                }
                a11++;
            }
            if (ijij == 11) {
                if (a12%2 == 0) {
                    [idk setImage:st12.image];
                }
                a12++;
            }
            if (ijij == 12) {
                if (a13%2 == 0) {
                    [idk setImage:st13.image];
                }
                a13++;
            }
            if (ijij == 13) {
                if (a14%2 == 0) {
                    [idk setImage:st14.image];
                }
                a14++;
            }
            if (ijij == 14) {
                if (a15%2 == 0) {
                    [idk setImage:st15.image];
                }
                a15++;
            }
            if (ijij == 15) {
                if (a16%2 == 0) {
                    [idk setImage:st16.image];
                }
                a16++;
            }
            if (ijij == 16) {
                if (a17%2 == 0) {
                    [idk setImage:st17.image];
                }
                a17++;
            }
            if (ijij == 17) {
                if (a18%2 == 0) {
                    [idk setImage:st18.image];
                }
                a18++;
            }
            if (ijij == 18) {
                if (a19%2 == 0) {
                    [idk setImage:st19.image];
                }
                a19++;
            }
            if (ijij == 19) {
                if (a20%2 == 0) {
                    [idk setImage:st20.image];
                }
                a20++;
            }
            if (ijij == 20) {
                if (a21%2 == 0) {
                    [idk setImage:st21.image];
                }
                a21++;
            }
            if (ijij == 21) {
                if (a22%2 == 0) {
                    [idk setImage:st22.image];
                }
                a22++;
            }
            if (ijij == 22) {
                if (a23%2 == 0) {
                    [idk setImage:st23.image];
                }
                a23++;
            }if (ijij == 23) {
                if (a24%2 == 0) {
                    [idk setImage:st24.image];
                }
                a24++;
            }
            if (ijij == 24) {
                if (a25%2 == 0) {
                    [idk setImage:st25.image];
                }
                a25++;
            }
            if (ijij == 25) {
                if (a26%2 == 0) {
                    [idk setImage:st26.image];
                }
                a26++;
            }
            
            if (ijij == 26) {
                if (a27%2 == 0) {
                    [idk setImage:st27.image];
                }
                a27++;
            }
            if (ijij == 27) {
                if (a28%2 == 0) {
                    [idk setImage:st28.image];
                }
                a28++;
            }
            if (ijij == 28) {
                if (a29%2 == 0) {
                    [idk setImage:st29.image];
                }
                a29++;
            }
            if (ijij == 29) {
                if (a30%2 == 0) {
                    [idk setImage:st30.image];
                }
                a30++;
            }
            if (ijij == 30) {
                if (a31%2 == 0) {
                    [idk setImage:st31.image];
                }
                a31++;
            }
            if (ijij == 31) {
                if (a32%2 == 0) {
                    [idk setImage:st32.image];
                }
                a32++;
            }
            if (ijij == 32) {
                if (a33%2 == 0) {
                    [idk setImage:st33.image];
                }
                a33++;
            }
            if (ijij == 33) {
                if (a34%2 == 0) {
                    [idk setImage:st34.image];
                }
                a34++;
            }
            if (ijij == 34) {
                if (a35%2 == 0) {
                    [idk setImage:st35.image];
                }
                a35++;
            }
            if (ijij == 35) {
                if (a36%2 == 0) {
                    [idk setImage:st36.image];
                }
                a36++;
            }
            if (ijij == 36) {
                if (a37%2 == 0) {
                    [idk setImage:st37.image];
                }
                a37++;
            }
            if (ijij == 37) {
                if (a38%2 == 0) {
                    [idk setImage:st38.image];
                }
                a38++;
            }
            if (ijij == 38) {
                if (a39%2 == 0) {
                    [idk setImage:st39.image];
                }
                a39++;
            }
            if (ijij == 39) {
                if (a40%2 == 0) {
                    [idk setImage:st40.image];
                }
                a40++;
            }
            if (ijij == 40) {
                if (a41%2 == 0) {
                    [idk setImage:st41.image];
                }
                a41++;
            }
            if (ijij == 41) {
                if (a42%2 == 0) {
                    [idk setImage:st42.image];
                }
                a42++;
            }
            if (ijij == 42) {
                if (a43%2 == 0) {
                    [idk setImage:st43.image];
                }
                a43++;
            }
            if (ijij == 43) {
                if (a44%2 == 0) {
                    [idk setImage:st44.image];
                }
                a44++;
            }
            if (ijij == 44) {
                if (a45%2 == 0) {
                    [idk setImage:st45.image];
                }
                a45++;
            }
            if (ijij == 45) {
                if (a46%2 == 0) {
                    [idk setImage:st46.image];
                }
                a46++;
            }
            if (ijij == 46) {
                if (a47%2 == 0) {
                    [idk setImage:st47.image];
                }
                a47++;
            }
            if (ijij == 47) {
                if (a48%2 == 0) {
                    [idk setImage:st48.image];
                }
                a48++;
            }
            if (ijij == 48) {
                if (a49%2 == 0) {
                    [idk setImage:st49.image];
                }
                a49++;
            }
            if (ijij == 49) {
                if (a50%2 == 0) {
                    [idk setImage:st50.image];
                }
                a50++;
            }if (ijij == 50) {
                if (a51%2 == 0) {
                    [idk setImage:st51.image];
                }
                a51++;
            }
            if (ijij == 51) {
                if (a52%2 == 0) {
                    [idk setImage:st52.image];
                }
                a52++;
            }
                      
            ijij = 53;
        }
    }

}


-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    bb = 0;
    
}






-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *myTouch = [[event allTouches] anyObject];
    cursor.center = [myTouch locationInView:self.view];
   
    if (bb == 0){
    for (aa = 0; aa <= 51; aa++) {
        idk = [cards objectAtIndex:aa];
        if (CGRectIntersectsRect(idk.frame, cursor.frame)) {
            bb = aa;
            aa = 53;
            sJ.center = cursor.center;
        }
    }
    }else{
        sJ.center = cursor.center;
    
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
