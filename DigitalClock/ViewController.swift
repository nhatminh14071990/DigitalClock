//
//  ViewController.swift
//  DigitalClock
//
//  Created by Van Ho Si on 9/14/17.
//  Copyright © 2017 Van Ho Si. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.updateTimeClock();
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.updateTimeClock), userInfo: nil, repeats: true)
    }

    @IBOutlet weak var labelAMPM: UILabel!
    
    @IBOutlet weak var labelTime: UILabel!
    
    func updateTimeClock()
    {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH"
        let hour = dateFormatter.string(from: date)
        
        dateFormatter.dateFormat = "hh:mm:ss"
        let time = dateFormatter.string(from: date);
        
        labelTime.text = time;
        labelAMPM.text = "AM";
        if(Int(hour)! >= 12){
            labelAMPM.text = "PM";
        }

    }
}

