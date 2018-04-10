//
//  ViewController.swift
//  looseChange
//
//  Created by Steven Grutman on 1/16/16.
//  Copyright © 2016 Steven Grutman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //var annoy:CGFloat = 0.0
   var timer = NSTimer()
     var timer2 = NSTimer()
    var count = 0
    var speed = 0.0
     var screenWidth = 0.0
     var screenHeight = 0.0
    var randomX = 0.0
     var randomY = 0.0
    var score = 0.0
    @IBOutlet var scoreLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let screenSize: CGRect = UIScreen.mainScreen().bounds
         screenWidth = Double(screenSize.width)
         screenHeight = Double(screenSize.height)
        speed = 0.5
        createMoney()
       timer = NSTimer.scheduledTimerWithTimeInterval(speed, target: self, selector: "createMoney", userInfo: nil, repeats: true)
        timer2 = NSTimer.scheduledTimerWithTimeInterval(10, target: self, selector: "faster", userInfo: nil, repeats: true)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func createMoney(){
        randomX = Double(CGFloat(Float(arc4random()) / Float(UINT32_MAX)))*(screenWidth - screenWidth/6)
        randomY = Double(CGFloat(Float(arc4random()) / Float(UINT32_MAX)))*(screenHeight - screenWidth/3) + (screenWidth/6)
        let btn = UIButton(type: UIButtonType.Custom) as UIButton
        btn.setImage(UIImage(named: "dollar.png"), forState: UIControlState.Normal)
        btn.frame = CGRectMake(CGFloat(randomX), CGFloat(randomY), CGFloat(screenWidth/6), CGFloat(screenWidth/12))
        btn.addTarget(self, action: "clickMe:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
        let delay = 0.75 * Double(NSEC_PER_SEC)
        var time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        dispatch_after(time, dispatch_get_main_queue(), {
           
        btn.frame = CGRectMake(btn.center.x-CGFloat(self.screenWidth/12), btn.center.y-CGFloat(self.screenWidth/12), CGFloat(self.screenWidth/6), CGFloat(self.screenWidth/6))
            
            btn.setImage(UIImage(named: "25cent.png"), forState: UIControlState.Normal)
            time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue(), {
                btn.setImage(UIImage(named: "10cent.png"), forState: UIControlState.Normal)
                time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
                dispatch_after(time, dispatch_get_main_queue(), {
                      btn.setImage(UIImage(named: "5cent.png"), forState: UIControlState.Normal)
                    var time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
                    dispatch_after(time, dispatch_get_main_queue(), {
                    btn.setImage(UIImage(named: "1cent.png"), forState: UIControlState.Normal)
                    time = dispatch_time(DISPATCH_TIME_NOW, Int64(1.25 * Double(NSEC_PER_SEC)))
                    dispatch_after(time, dispatch_get_main_queue(), {
                        
                        if btn.isDescendantOfView(self.view) {
                            self.timer.invalidate()
                            self.timer2.invalidate()
                            self.randomX = Double(btn.center.x-CGFloat(self.screenWidth/12))
                            self.randomY = Double(btn.center.y-CGFloat(self.screenWidth/12))
                            for view in self.view.subviews as [UIView] {
                                if let btn2 = view as? UIButton {
                                   btn2.removeFromSuperview()
                                }
                            }
                             let btn3 = UIButton(type: UIButtonType.Custom) as UIButton
                            btn3.setImage(UIImage(named: "X.png"), forState: UIControlState.Normal)
                             btn3.frame = CGRectMake(CGFloat(self.randomX), CGFloat(self.randomY-3), CGFloat(self.screenWidth/6), CGFloat(self.screenWidth/6))
                            self.view.addSubview(btn3)
                            
                            time = dispatch_time(DISPATCH_TIME_NOW, Int64(1.25 * Double(NSEC_PER_SEC)))
                            dispatch_after(time, dispatch_get_main_queue(), {

                            
                        let alertController = UIAlertController(title: "iOScreator", message:
                            "Hello, world!", preferredStyle: UIAlertControllerStyle.Alert)
                        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
                        
                        self.presentViewController(alertController, animated: true, completion: nil)
                            })
                        }
                        
                    })
                })
            })
        })
        })
        
        
        
    }

    func clickMe(sender:UIButton!)
    {
        if((sender.currentImage?.isEqual(UIImage(named: "dollar.png"))) == Optional(true)){
            score = score + 1.0
        }else{
            if((sender.currentImage?.isEqual(UIImage(named: "25cent.png"))) == Optional(true)){
                score = score + 0.25
            }else{
                if((sender.currentImage?.isEqual(UIImage(named: "10cent.png"))) == Optional(true)){
                    score = score + 0.1
                }else{
                    if((sender.currentImage?.isEqual(UIImage(named: "5cent.png"))) == Optional(true)){
                        score = score + 0.05
                    }else{
                        if((sender.currentImage?.isEqual(UIImage(named: "1cent.png"))) == Optional(true)){
                            score = score + 0.01
                        }else{
                            
                        }
                    }
                }
            }
        }
        scoreLabel!.text = "$" + String(score)
        sender.removeFromSuperview()
    }
    func faster()
    {
        speed = speed - (speed/8)
        timer.invalidate()
        timer = NSTimer.scheduledTimerWithTimeInterval(speed, target: self, selector: "createMoney", userInfo: nil, repeats: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //create buttons through code with dollars small height for dollars, then equal height for coins


}

