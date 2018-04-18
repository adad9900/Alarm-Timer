//
//  ViewController.swift
//  Alarm Timer
//
//  Created by D7703_16 on 2018. 4. 18..
//  Copyright © 2018년 201412402. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet weak var alarmTime: UILabel!
    @IBOutlet weak var timeNow: UILabel!
    var myTimer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm:ss"
        alarmTime.text = formatter.string(from: myDatePicker.date)
        
        myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in self.updateTime()
            
        })
    }
    
    func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm:ss"
        timeNow.text = formatter.string(from: date)
        
        if timeNow.text == alarmTime.text {
            view.backgroundColor = UIColor.yellow // 지정한 알람 시간이되면 노란색으로
        }
    }
    
    
    @IBAction func DatePickerValueChanged(_ sender: Any) {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm:ss"
        alarmTime.text = formatter.string(from : myDatePicker.date)
    }
    
    @IBAction func button(_ sender: Any) {
        view.backgroundColor = UIColor.white
    }
}




