//
//  ViewController.swift
//  Mealert - NC1
//
//  Created by Anastasia Agatha on 27/04/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TimePicker: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
                let time = Date()
                let formatter = DateFormatter()
                formatter.locale = Locale(identifier: "en_gb")
                formatter.dateFormat = "hh:mm:ss"
                TimePicker.text = formatter.string(from: time)
                TimePicker.textColor = .link
                
                let picker = UIDatePicker()
                picker.datePickerMode = .time
                picker.addTarget(self, action: #selector(timePickerValueChanged(sender:)), for: UIControl.Event.valueChanged)
                picker.frame.size = CGSize(width: 0, height: 250)
                TimePicker.inputView = picker
    }
    
    @objc func timePickerValueChanged(sender: UIDatePicker){
            //when time is changed it will appear here
            let formatter = DateFormatter()
            formatter.locale = Locale(identifier: "en_gb")
            formatter.dateFormat = "hh:mm:ss"
            TimePicker.text = formatter.string(from: sender.date)
        }
}

