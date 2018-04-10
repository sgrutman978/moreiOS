//
//  ViewController.swift
//  55 Fast
//
//  Created by Steven Grutman on 7/29/15.
//  Copyright (c) 2015 Steven Grutman. All rights reserved.
//

import UIKit
import GoogleMobileAds
import GameKit
import Social
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}

fileprivate func > <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l > r
  default:
    return rhs < lhs
  }
}


class ViewController: UIViewController, GKGameCenterControllerDelegate {

    @IBOutlet weak var bannerView: GADBannerView!
    var rightNow = 1
    var tempClick = 0
     var tempNumb = Int(arc4random_uniform(7))
    var tempNumb2 = Int(arc4random_uniform(7))
    var sorta = ""
    var sorta2 = ""
     @IBOutlet var nowLabel: UILabel?
     @IBOutlet var bigLabel: UILabel?
     @IBOutlet var highLabel: UILabel?
    @IBOutlet var goButton1: UIButton?
    @IBOutlet var goButton2: UIButton?
    @IBOutlet var goButton3: UIButton!
    @IBOutlet var goButton4: UIButton?
    @IBOutlet var goButton5: UIButton?
    @IBOutlet var goButton6: UIButton?
    @IBOutlet var goButton7: UIButton?
    @IBOutlet var goButton8: UIButton?
    @IBOutlet var goButton9: UIButton?
    @IBOutlet var goButton10: UIButton?
    @IBOutlet var goButton11: UIButton?
    @IBOutlet var goButton12: UIButton?
    @IBOutlet var goButton13: UIButton?
    @IBOutlet var goButton14: UIButton?
    @IBOutlet var goButton15: UIButton?
    @IBOutlet var goButton16: UIButton?
    @IBOutlet var goButton17: UIButton?
    @IBOutlet var goButton18: UIButton?
    @IBOutlet var goButton19: UIButton?
    @IBOutlet var goButton20: UIButton?
    @IBOutlet var goButton21: UIButton?
    @IBOutlet var goButton22: UIButton?
    @IBOutlet var goButton23: UIButton?
    @IBOutlet var goButton24: UIButton?
    @IBOutlet var goButton25: UIButton?
    @IBOutlet var goButton26: UIButton?
    @IBOutlet var goButton27: UIButton?
    @IBOutlet var goButton28: UIButton?
    @IBOutlet var goButton29: UIButton?
    @IBOutlet var goButton30: UIButton?
    @IBOutlet var goButton31: UIButton?
    @IBOutlet var goButton32: UIButton?
    @IBOutlet var goButton33: UIButton?
    @IBOutlet var goButton34: UIButton?
    @IBOutlet var goButton35: UIButton?
    @IBOutlet var goButton36: UIButton?
    @IBOutlet var goButton37: UIButton?
    @IBOutlet var goButton38: UIButton?
    @IBOutlet var goButton39: UIButton?
    @IBOutlet var goButton40: UIButton?
    @IBOutlet var goButton41: UIButton?
    @IBOutlet var goButton42: UIButton?
    @IBOutlet var goButton43: UIButton?
    @IBOutlet var goButton44: UIButton?
    @IBOutlet var goButton45: UIButton?
    @IBOutlet var goButton46: UIButton?
    @IBOutlet var goButton47: UIButton?
    @IBOutlet var goButton48: UIButton?
    @IBOutlet var goButton49: UIButton?
    @IBOutlet var goButton50: UIButton?
    @IBOutlet var goButton51: UIButton?
    @IBOutlet var goButton52: UIButton?
    @IBOutlet var goButton53: UIButton?
    @IBOutlet var goButton54: UIButton?
    @IBOutlet var goButton55: UIButton?
   @IBOutlet var arrB: Array<UIButton>!
    var ii = 0
    var mode = 0
    var counter = 0.0
    var timer = Timer()
    @IBOutlet var timeLabel: UILabel?
    var arrA : [Int] = []
     @IBOutlet var play: UIButton?
    var clickable = 0
    var score = 0
    let defaults = UserDefaults.standard
    var highscore = "0"
    var totalScore = 0
      @IBOutlet var logo: UIImageView?
    var newHigh = false
    
//    var identifier : String? = nil
//    var percentComplete:Double = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        authenticateLocalPlayer()
      //  resetAchievements()
        
        self.bannerView.adUnitID = "ca-app-pub-4634942361564980/1515072951"
        self.bannerView.rootViewController = self
        let request: GADRequest = GADRequest()
      // request.testDevices = [kGADSimulatorID]
        self.bannerView.load(request)
        
        if(defaults.string(forKey: "highscore") != nil){
            highscore = defaults.string(forKey: "highscore")!
            highLabel!.text = "Highscore: " + highscore
        }
         if(defaults.string(forKey: "totalscore") != nil){
        totalScore = Int(defaults.string(forKey: "totalscore")!)!
        }
            print(totalScore)
        arrB = [goButton1!, goButton2!,goButton3!,goButton4!,goButton5!,goButton6!,goButton7!,goButton8!,goButton9!,goButton10!,goButton11!,goButton12!,goButton13!,goButton14!,goButton15!,goButton16!,goButton17!,goButton18!,goButton19!,goButton20!,goButton21!,goButton22!,goButton23!,goButton24!,goButton25!,goButton26!,goButton27!,goButton28!,goButton29!,goButton30!,goButton31!,goButton32!,goButton33!,goButton34!,goButton35!,goButton36!,goButton37!,goButton38!,goButton39!,goButton40!,goButton41!,goButton42!,goButton43!,goButton44!,goButton45!,goButton46!,goButton47!,goButton48!,goButton49!,goButton50!,goButton51!,goButton52!,goButton53!,goButton54!, goButton55!]
        
//        for(ii = 0; ii < 55; ii++){
//            arrB[ii].frame = CGRectMake(60, arrB[ii].frame.height, arrB[ii].center.x, arrB[ii].center.y-100)
//            arrB[ii].updateConstraints()
//        }
//        switch UIDevice.currentDevice().userInterfaceIdiom {
//        case .Phone:
//            break
//        case .Pad:
//            break
//        case .Unspecified:
//           break
//        default:
//            break
//        }
        
        play!.setTitle("Play", for: UIControlState())
            for i in 0..<55{
            arrB[ii].setTitle("", for: UIControlState())
        }
          timeLabel!.text = ""
        
        bigLabel!.text = "Can you find 55 numbers in 55 seconds?\n\nFirst find 1, then 2, 3, 4..."
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //***********************************************************
    
    
   func resetAchievements()
    {
    
        GKAchievement.resetAchievements() {(error) in
            print("fuck")
        }
    }
    
    
    @IBAction func clickGameCenter(_ sender: AnyObject) {
        showLeader()
    }
    
    //initiate gamecenter
    func authenticateLocalPlayer(){
        
        let localPlayer = GKLocalPlayer.localPlayer()
        
        localPlayer.authenticateHandler = {(viewController, error) -> Void in
            
            if (viewController != nil) {
                self.present(viewController!, animated: true, completion: nil)
            }
                
            else {
                print((GKLocalPlayer.localPlayer().isAuthenticated))
            }
        }
        
    }
    
    //send high score to leaderboard
    func saveHighscore(_ score2:Int, itID:String) {
        
        //check if user is signed in
        if GKLocalPlayer.localPlayer().isAuthenticated {
            
            let scoreReporter = GKScore(leaderboardIdentifier: itID) //leaderboard id here
            
            scoreReporter.value = Int64(score2) //score variable here (same as above)
            
            let scoreArray: [GKScore] = [scoreReporter]
            
            GKScore.report(scoreArray, withCompletionHandler: {(NSError) -> Void in
                if NSError != nil {
                    print(NSError!.localizedDescription)
                } else {
                    print("completed Easy")
                }
                
            })
            
        }
        
    }

    //shows leaderboard
    func showLeader() {
        let vc = self.view?.window?.rootViewController
        let gc = GKGameCenterViewController()
        gc.gameCenterDelegate = self
        vc?.present(gc, animated: true, completion: nil)
    }
    
    //hides leaderboard screen
    func gameCenterViewControllerDidFinish(_ gameCenterViewController: GKGameCenterViewController!)
    {
        gameCenterViewController.dismiss(animated: true, completion: nil)
        
    }

    //***************************************************************
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //    func adViewDidReceiveAd(bannerView: GADBannerView!) {
    //        bannerView.hidden = false
    //    }
    

    // start timer
//    @IBAction func startTimerButtonTapped(sender: UIButton) {
//    }
    
    // stop timer
//    @IBAction func cancelTimerButtonTapped(sender: UIButton) {
//       
//    }
    
    // called every time interval from the timer
    func timerAction() {
               if(Int(highscore) < 3){
                if(arrB[arrA[rightNow-1]].backgroundColor == UIColor.yellow){
                     arrB[arrA[rightNow-1]].backgroundColor = UIColor.clear
                }else{
                     arrB[arrA[rightNow-1]].backgroundColor = UIColor.yellow
            }
        }
        if(counter - 0.05 < 0.0){
            
//            if(newHigh){
//               
//            }

            if(clickable == 1){
                checkAchievements()
                play!.setTitle("Play", for: UIControlState())
                play!.backgroundColor = UIColor.green
                    //  timeLabel!.text = "Time!"
                rightNow -= 1
            arrB[arrA[rightNow]].backgroundColor = UIColor.yellow
                timer.invalidate()
                 timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(ViewController.timerAction), userInfo: nil, repeats: true)
                clickable = 0
            }else{
                if(timeLabel!.textColor == UIColor.red){
                    timeLabel!.textColor = UIColor.black
                }else{
                    timeLabel!.textColor = UIColor.red
                }
//                if(score >= 55){
//                    arrB[arrA[rightNow-1]].backgroundColor = UIColor.yellowColor()
//                    if(rightNow == 54){
//                        timer.invalidate()
//                    }
//                }else{
                arrB[arrA[rightNow-1]].backgroundColor = UIColor.red
                 arrB[arrA[score]].backgroundColor = UIColor.yellow
                arrB[arrA[rightNow]].backgroundColor = UIColor.yellow
                //}
            }
            rightNow += 1
            if(rightNow == 55){
                timeLabel!.textColor = UIColor.red
                timer.invalidate()
               // arrB[arrA[53]].backgroundColor = UIColor.redColor()
            }
        }else{
            counter = counter - 0.5
            if(ceil(counter) < 10){
                timeLabel!.textColor = UIColor.red
            }
              timeLabel!.text = "\(Int(ceil(counter)))"
        }
    }
    
   
   @IBAction func shareScore(){
        let textToShare = "I challenge you to beat my high score of " + highscore + " points on '55 Fast'! Don't let your eyes fool you!"
        
        if let myWebsite = URL(string: "http://appsto.re/us/2uDlab.i")
        {
            let objectsToShare = [textToShare, myWebsite] as [Any]
            let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
            
            self.present(activityVC, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func randomNumbers() {
//        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook) {
//            var fbShare:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
//            
//            self.presentViewController(fbShare, animated: true, completion: nil)
//            
//        } else {
//            var alert = UIAlertController(title: "Accounts", message: "Please login to a Facebook account to share.", preferredStyle: UIAlertControllerStyle.Alert)
//            
//            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
//            self.presentViewController(alert, animated: true, completion: nil)
//        }
         highLabel!.text = "High Score: " + highscore
        highLabel!.textColor = UIColor.black
        nowLabel!.backgroundColor = UIColor.yellow
        newHigh = false
        if(play!.titleLabel!.text == "Play"){
         play!.setTitle("End", for: UIControlState())
            bigLabel!.text = ""
            logo!.removeFromSuperview()
        play!.backgroundColor = UIColor.red
        clickable = 1
        counter = 55.5
            timeLabel!.textColor = UIColor.black
            timeLabel!.text = "55"
        arrA = []
        timer.invalidate()
         timer.invalidate() // just in case this button is tapped multiple times
        // start the timer
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.timerAction), userInfo: nil, repeats: true)
        
        nowLabel!.text = "0"
        tempClick = 1
        rightNow = 1
             score = 0
            for i in 0..<55{
                arrB[ii].setTitle("0", for: UIControlState())
                arrB[ii].backgroundColor = UIColor.lightGray
            }
            for i in 0..<55{
                tempNumb = Int(arc4random_uniform(55))
                if(arrB[tempNumb].currentTitle != "0"){
             ii -= 1
                }else{
                     arrB[tempNumb].setTitle(String(ii), for: UIControlState())
                    arrA += [tempNumb]
                }
            }
        }else{
             counter = -1.0
            //timeLabel!.text = "55"
             play!.setTitle("Play", for: UIControlState())
            play!.backgroundColor = UIColor.green
        }
    }
    
    func clicking(){
         if(clickable==1){
        if(String(rightNow) == arrB[tempClick-1].currentTitle){
            rightNow += 1
            score = rightNow-1
            
            totalScore += 1
            defaults.setValue(String(totalScore), forKey: "totalscore")
            defaults.synchronize()
            
            nowLabel!.text = String(rightNow-1)
            arrB[tempClick-1].backgroundColor = UIColor.green
            if(score == 55){
                timer.invalidate()
                score = score + Int(timeLabel!.text!)!
                
                totalScore += Int(timeLabel!.text!)!
                defaults.setValue(String(totalScore), forKey: "totalscore")
                defaults.synchronize()
                
                checkAchievements()
                nowLabel!.text = String(score)
               // bigLabel!.text = "55+" + timeLabel!.text! + "\nScore: " + String(score)
                timeLabel!.text = "+" + timeLabel!.text!
                timeLabel!.textColor = UIColor.yellow
                play!.setTitle("Play", for: UIControlState())
                play!.backgroundColor = UIColor.green
                //rightNow = 1
                //counter = -1
                for i in 0..<55{
                    arrB[ii].backgroundColor = UIColor.yellow
                   // arrB[ii].setTitle("", forState: .Normal)
                }
            }
        }else{
           //dead (maybe)
        }
        }
        if(score > Int(highscore)){
           // newHigh = true
            highscore = String(score)
        defaults.setValue(String(score), forKey: "highscore")
        defaults.synchronize()
        highLabel!.text = "High Score!"
            highLabel!.textColor = UIColor.green
            nowLabel!.backgroundColor = UIColor.green
             saveHighscore(score, itID: "524337126982179879528")
        }
        saveHighscore(totalScore, itID: "6957325987238957092")
    }
    
    
    func checkAchievements() {
        runAch("total1", percentComplete: Double(totalScore)/0.55)
        runAch("total2", percentComplete: Double(totalScore)/5.55)
        runAch("total3", percentComplete: Double(totalScore)/55.55)
        runAch("total4", percentComplete: Double(totalScore)/555.55)
        runAch("15", percentComplete: Double(score)/0.15)
       runAch("35", percentComplete: Double(score)/0.35)
       runAch("55", percentComplete: Double(score)/0.55)
       runAch("70", percentComplete: Double(score)/0.7)
    }
    
    func runAch(_ identifier2:String, percentComplete:Double){
            let achievement = GKAchievement(identifier: identifier2)
            if(percentComplete >= 100.0){
            achievement.showsCompletionBanner = true
            }
            achievement.percentComplete = percentComplete
        GKAchievement.report([achievement], withCompletionHandler: nil)
    }
    
    
    @IBAction func click1(){
        tempClick = 1
        clicking()
    }
    @IBAction func click2(){
        tempClick = 2
        clicking()
    }
    @IBAction func click3(){
        tempClick = 3
        clicking()
    }
    @IBAction func click4(){
        tempClick = 4
        clicking()
    }
    @IBAction func click5(){
        tempClick = 5
            clicking()
    }
    @IBAction func click6(){
        tempClick = 6
            clicking()
    }
    @IBAction func click7(){
        tempClick = 7
            clicking()
    }
    @IBAction func click8(){
        tempClick = 8
            clicking()
    }
    @IBAction func click9(){
        tempClick = 9
            clicking()
    }
    @IBAction func click10(){
        tempClick = 10
            clicking()
    }
    @IBAction func click11(){
        tempClick = 11
            clicking()
    }
    @IBAction func click12(){
        tempClick = 12
            clicking()
    }
    @IBAction func click13(){
        tempClick = 13
            clicking()
    }
    @IBAction func click14(){
        tempClick = 14
            clicking()
    }
    @IBAction func click15(){
        tempClick = 15
            clicking()
    }
    @IBAction func click16(){
        tempClick = 16
            clicking()
    }
    @IBAction func click17(){
        tempClick = 17
            clicking()
    }
    @IBAction func click18(){
        tempClick = 18
            clicking()
    }
    @IBAction func click19(){
        tempClick = 19
            clicking()
    }
    @IBAction func click20(){
        tempClick = 20
            clicking()
    }
    @IBAction func click21(){
        tempClick = 21
            clicking()
    }
    @IBAction func click22(){
        tempClick = 22
        clicking()
    }
    @IBAction func click23(){
        tempClick = 23
            clicking()
    }
    @IBAction func click24(){
        tempClick = 24
            clicking()
    }
    @IBAction func click25(){
        tempClick = 25
            clicking()
    }
    @IBAction func click26(){
        tempClick = 26
            clicking()
    }
    @IBAction func click27(){
        tempClick = 27
            clicking()
    }
    @IBAction func click28(){
        tempClick = 28
            clicking()
    }
    @IBAction func click29(){
        tempClick = 29
            clicking()
    }
    @IBAction func click30(){
        tempClick = 30
            clicking()
    }
    @IBAction func click31(){
        tempClick = 31
            clicking()
    }
    @IBAction func click32(){
        tempClick = 32
            clicking()
    }
    @IBAction func click33(){
        tempClick = 33
            clicking()
    }
    @IBAction func click34(){
        tempClick = 34
            clicking()
    }
    @IBAction func click35(){
        tempClick = 35
            clicking()
    }
    @IBAction func click36(){
        tempClick = 36
            clicking()
    }
    @IBAction func click37(){
        tempClick = 37
            clicking()
    }
    @IBAction func click38(){
        tempClick = 38
            clicking()
    }
    @IBAction func click39(){
        tempClick = 39
            clicking()
    }
    @IBAction func click40(){
        tempClick = 40
            clicking()
    }
    @IBAction func click41(){
        tempClick = 41
            clicking()
    }
    @IBAction func click42(){
        tempClick = 42
            clicking()
    }
    @IBAction func click43(){
        tempClick = 43
            clicking()
    }
    @IBAction func click44(){
        tempClick = 44
            clicking()
    }
    @IBAction func click45(){
        tempClick = 45
            clicking()
    }
    @IBAction func click46(){
        tempClick = 46
            clicking()
    }
    @IBAction func click47(){
        tempClick = 47
            clicking()
    }
    @IBAction func click48(){
        tempClick = 48
            clicking()
    }
    @IBAction func click49(){
        tempClick = 49
            clicking()
    }
    @IBAction func click50(){
        tempClick = 50
            clicking()
    }
    @IBAction func click51(){
        tempClick = 51
            clicking()
    }
    @IBAction func click52(){
        tempClick = 52
            clicking()
    }
    @IBAction func click53(){
        tempClick = 53
            clicking()
    }
    @IBAction func click54(){
        tempClick = 54
            clicking()
    }
    @IBAction func click55(){
        tempClick = 55
            clicking()
    }
    
    

}

