//
//  ViewController.swift
//  Stopwatch
//
//  Created by Yoganand Subramanyam on 03/08/16.
//  Copyright © 2016 aycommunity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    
    var time = 0
    var timeState = false
    
    @IBOutlet var timerLabel: UILabel!
    
    @IBOutlet var alertLabel: UILabel!
    func increaseTimer() {
        
        time+=1
        timerLabel.text = String(time)
        timeState = true
        
    }
    
    @IBAction func play(sender: AnyObject) {
        
        if timeState != true{
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        }
        else{
            alertLabel.text = "Timer already running"
        }
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        timeState = false
        alertLabel.text?.removeAll()
        
    }
    
    @IBAction func reset(sender: AnyObject) {
        
        timer.invalidate()
        time = 0
        timerLabel.text = "0"
        timeState = false
        timerLabel.text?.removeAll()
    }
    
    @IBAction func addNewTimer(sender: AnyObject) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

