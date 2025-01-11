//
//  ViewController.swift
//  StopWatch
//
//  Created by Aydın KAYA on 11.01.2025.
//

import UIKit

class MainScreen: UIViewController {
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var resetButtonLabel: UIButton!
    @IBOutlet weak var startStopButtonLabel: UIButton!
    
    
    var timer : Timer = Timer()
    var counter : Int = 0
    var timerCounting : Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startStopButtonLabel.setTitleColor(UIColor.green, for: .normal)
        
    }
    
    
    @IBAction func startStopButton(_ sender: UIButton, forEvent event: UIEvent) {
        
        if(timerCounting){
            timerCounting = false
            timer.invalidate()
            startStopButtonLabel.setTitle( "START", for: .normal)
            startStopButtonLabel.setTitleColor(UIColor.green, for: .normal)
        }else{
            timerCounting = true
            startStopButtonLabel.setTitle( "STOP", for: .normal)
            startStopButtonLabel.setTitleColor(UIColor.red, for: .normal)
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)
        }
        
    }
    
    
    
    @IBAction func resetButton(_ sender: UIButton, forEvent event: UIEvent) {
        let alert = UIAlertController(title: "Reset Timer?", message: "Are you sure you would like to reset the timer?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "CANCEL", style: .cancel, handler: { UIAlertAction in
            
        }))
        
        alert.addAction(UIAlertAction(title: "YES", style: .default, handler: { UIAlertAction in
            self.counter = 0
            self.timer.invalidate()
            self.timerLabel.text = self.makeTimeString(hours: 0, minutes: 0, seconds: 0)
            self.startStopButtonLabel.setTitle( "START", for: .normal)
            self.startStopButtonLabel.setTitleColor(UIColor.green, for: .normal)
        }))
        
        
        self.present(alert, animated: true , completion: nil)
        
    }
    
    
    
    @objc func timerCounter() -> Void{
        counter += 1
        let time = secondsToHoursMinutesSeconds(seconds: counter)
        let timeString = makeTimeString(hours: time.0, minutes: time.1, seconds: time.2)
        timerLabel.text = timeString
    }
    
    func secondsToHoursMinutesSeconds(seconds : Int) -> (Int, Int, Int){
        return ((seconds / 3600), ((seconds % 3600) / 60), ((seconds % 3600) % 60))
    }
    
    func makeTimeString(hours: Int, minutes : Int, seconds : Int) -> String{
        
        var timeString  = ""
        timeString += String(format: "%02d", hours)
        timeString += " : "
        timeString += String(format: "%02d", minutes)
        timeString += " : "
        timeString += String(format: "%02d", seconds)
        
        return timeString
    }
    
    
    
    
    
    
}

