//
//  americasProblemViewController.m
//  americasProblem
//
//  Created by Steven Grutman on 9/19/12.
//  Copyright (c) 2012 Steven Grutman. All rights reserved.
//

#import "americasProblemViewController.h"
#import <GameKit/GameKit.h>


@interface americasProblemViewController ()

@end

@implementation americasProblemViewController
@synthesize banner, bannerIsVisible;

/*- (BOOL)bannerViewActionShouldBegin:(ADBannerView *)banner willLeaveApplication:(BOOL)willLeave
{
    NSLog(@"Banner view is beginning an ad action");
    BOOL shouldExecuteAction = [self allowActionToRun]; // your application implements this method
    if (!willLeave && shouldExecuteAction)
    {
        // insert code here to suspend any services that might conflict with the advertisement
    }
    return shouldExecuteAction;
}*/

-(void)bannerViewDidLoadAd:(ADBannerView *)banner {
    if (!self.bannerIsVisible) {
        [UIView beginAnimations:@"animatedAdBannerOn" context:NULL];
        banner.frame = CGRectOffset(banner.frame, 0.0, 50.0);
        [UIView commitAnimations];
        self.bannerIsVisible = YES;
    }
}

-(void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error {
    if (!self.bannerIsVisible) {
        [UIView beginAnimations:@"animatedAdBannerOff" context:NULL];
        banner.frame = CGRectOffset(banner.frame, 0.0, -320.0);
        [UIView commitAnimations];
        self.bannerIsVisible = NO;
    }
} 

- (void)viewDidLoad {
	[super viewDidLoad];
	// (X speed, y speed)
    burger.center = CGPointMake(1000, 1000);
}



-(IBAction)start {
    [startbutton setHidden:YES];
    [gamecenter setHidden:YES];
    [blueBackground setHidden:YES];
    [fattyPatty setHidden:YES];
    [nonUsedPatty1 setHidden:YES];
    [nonUsedPatty2 setHidden:YES];
    [self run];
    score = 0;
    scoreLabel.text = @"0";
randomMain = [NSTimer scheduledTimerWithTimeInterval:(0.01) target:self selector:@selector(onTimer2) userInfo:nil repeats:YES];
speedUp = [NSTimer scheduledTimerWithTimeInterval:(15) target:self selector:@selector(speedsters) userInfo:nil repeats:YES];
replaceBurger = [NSTimer scheduledTimerWithTimeInterval:(5) target:self selector:@selector(replace) userInfo:nil repeats:YES];
replaceBurger1 = [NSTimer scheduledTimerWithTimeInterval:(8) target:self selector:@selector(replace1) userInfo:nil repeats:YES];
}

-(void)run {
    [self setOrigSpeed];
    [self setOrigSpeed1];
    [self setOrigSpeed2];
}

-(void)speedsters{
    [self speedster];
    [self speedster1];
}

-(void)setOrigSpeed {
    startSpeed = random() % 15;
    
    if (startSpeed == 0) {
        pos = CGPointMake(2, 1);
    }
    if (startSpeed == 1) {
        pos = CGPointMake(2, -1);
    }
    if (startSpeed == 2) {
        pos = CGPointMake(-2, 1);
    }
    if (startSpeed == 3) {
        pos = CGPointMake(-2, -1);
    }
    if (startSpeed == 4) {
        pos = CGPointMake(3, 1);
    }
    if (startSpeed == 5) {
        pos = CGPointMake(-2, -3);
    }
    if (startSpeed == 6) {
        pos = CGPointMake(2, 3);
    }
    if (startSpeed == 7) {
        pos = CGPointMake(-3, 2);
    }
    if (startSpeed == 8) {
        pos = CGPointMake(-2, 3);
    }
    if (startSpeed == 9) {
        pos = CGPointMake(1, 3);
    }
    if (startSpeed == 10) {
        pos = CGPointMake(-1, -3);
    }
    if (startSpeed == 11) {
        pos = CGPointMake(-1, 3);
    }
    if (startSpeed == 12) {
        pos = CGPointMake(-3, 1);
    }
    if (startSpeed == 13) {
        pos = CGPointMake(-3, -1);
    }
    if (startSpeed == 14) {
        pos = CGPointMake(-2.5, 1.5);
    }
    if (startSpeed == 15) {
        pos = CGPointMake(-2.5, 1.5);
    }
}

-(void)setOrigSpeed1 {
    startSpeed1 = random() % 15;
    
    if (startSpeed1 == 0) {
        pos1 = CGPointMake(2, 1);
    }
    if (startSpeed1 == 1) {
        pos1 = CGPointMake(2, -1);
    }
    if (startSpeed1 == 2) {
        pos1 = CGPointMake(-2, 1);
    }
    if (startSpeed1 == 3) {
        pos1 = CGPointMake(-2, -1);
    }
    if (startSpeed1 == 4) {
        pos1 = CGPointMake(3, 1);
    }
    if (startSpeed1 == 5) {
        pos1 = CGPointMake(-2, -3);
    }
    if (startSpeed1 == 6) {
        pos1 = CGPointMake(2, 3);
    }
    if (startSpeed1 == 7) {
        pos1 = CGPointMake(-3, 2);
    }
    if (startSpeed1 == 8) {
        pos1 = CGPointMake(-2, 3);
    }
    if (startSpeed1 == 9) {
        pos1 = CGPointMake(1, 3);
    }
    if (startSpeed1 == 10) {
        pos1 = CGPointMake(-1, -3);
    }
    if (startSpeed1 == 11) {
        pos1 = CGPointMake(-1, 3);
    }
    if (startSpeed1 == 12) {
        pos1 = CGPointMake(-3, 1);
    }
    if (startSpeed1 == 13) {
        pos1 = CGPointMake(-3, -1);
    }
    if (startSpeed1 == 14) {
        pos1 = CGPointMake(-2.5, 1.5);
    }
    if (startSpeed1 == 15) {
        pos1 = CGPointMake(-2.5, 1.5);
    }
}

-(void)setOrigSpeed2 {
    if (startSpeed == startSpeed1) {
        [self run];
    }
}

-(void)replace {
    burger.alpha = 0;
    burger.center = CGPointMake(random() % 320, random() % 480);
    burger.alpha = 1;
}

-(void)replace1 {
    burger1.alpha = 0;
    burger1.center = CGPointMake(random() % 320, random() % 480);
    burger1.alpha = 1;
}

-(void)speedster {
    if (pos.x < 20) {
        pos = CGPointMake(pos.x*1.1,pos.y*1.1);
    }
}

-(void)speedster1 {
    if (pos1.x < 20) {
        pos1 = CGPointMake(pos1.x*1.1,pos1.y*1.1);
    }
}

-(void)checkEat {
    
    if (CGRectIntersectsRect(player.frame, burger.frame)) {
        burger.center = CGPointMake(1000, burger.center.y);
        score  = (int)score + 1;
        NSString *clicks = [NSString stringWithFormat:@"%d", score];
        scoreLabel.text = clicks;
    }
}

-(void)checkEat1 {
    if (CGRectIntersectsRect(player.frame, burger1.frame)) {
        burger1.center = CGPointMake(1000, burger1.center.y);
        score  = (int)score + 1;
        NSString *clicks = [NSString stringWithFormat:@"%d", score];
        scoreLabel.text = clicks;
    }
}

-(void)onTimer2 {
    [self checkCollision];
    [self checkEat];
    [self checkEat1];
    enemy.center = CGPointMake(enemy.center.x+pos.x,enemy.center.y+pos.y);
    enemy1.center = CGPointMake(enemy1.center.x+pos1.x,enemy1.center.y+pos1.y);
	if (enemy.center.x > 320 || enemy.center.x < 0){
		pos.x = -pos.x;
    }
    if (enemy.center.y > 480 || enemy.center.y < 40){
        pos.y = -pos.y;
    }
    if (enemy1.center.x > 320 || enemy1.center.x < 0){
        pos1.x = -pos1.x;
    }
    if (enemy1.center.y > 480 || enemy1.center.y < 40){
        pos1.y = -pos1.y;
    }
}




-(void)checkCollision {
	if(CGRectIntersectsRect(player.frame,enemy.frame) || CGRectIntersectsRect(player.frame,enemy1.frame))
	{
		[randomMain invalidate];
        [speedUp invalidate];
        [replaceBurger invalidate];
        [replaceBurger1 invalidate];
        [startbutton setHidden:NO];
        [gamecenter setHidden:NO];
        [blueBackground setHidden:NO];
        [fattyPatty setHidden:NO];
        [nonUsedPatty1 setHidden:NO];
        [nonUsedPatty2 setHidden:NO];
        [self submitScore];
		pos = CGPointMake(0.0,0.0);
        pos1 = CGPointMake(0.0,0.0);
		player.center = CGPointMake(160, 320);
        enemy.center = CGPointMake(140, 80);
        enemy1.center = CGPointMake(180, 80);
		
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"You Lost!" message:[NSString stringWithFormat:@"I know your hungry so TRY AGAIN !"] delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
		[alert show];
	}
}

-(void)submitScore {
    
}

- (void)touchesMoved: (NSSet *)touches withEvent:(UIEvent *)event {
	player.center = CGPointMake(player.center.x+pos.x,player.center.y+pos.y);
    UITouch *myTouch = [[event allTouches] anyObject];
	player.center = [myTouch locationInView:self.view];
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

@end 
