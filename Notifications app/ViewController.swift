//
//  ViewController.swift
//  Notifications app
//
//  Created by Y.TOBITA on 2020/12/13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textfieldA: UITextField!
    @IBOutlet weak var textfieldB: UITextField!
    @IBOutlet weak var textfieldC: UITextField!
    @IBOutlet weak var textfieldD: UITextField!
    @IBOutlet weak var textfieldE: UITextField!
    var mozi:String = ""
    var mozi2:String = ""
    var time: Int = 0
    var time2: Int = 0
    var time3: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
        }
    @IBAction func debug(_ sender: Any) {
        mozi = ""
        mozi2 = ""
        time = 0
        time2 = 0
        time3 = 0
        mozi = textfieldA.text!
        mozi2 = textfieldB.text!
        if textfieldC.text! != "" {
            time = Int(textfieldC.text!)!}
        if textfieldD.text! != "" {time2 = Int(textfieldD.text!)!
            time2 = time2 * 60
            time = time + time2}
        if textfieldE.text! != "" {time3 = Int(textfieldE.text!)!
             time3 = time2 / 60
         time = time + time3
 }
        if time != 0{
            let content = UNMutableNotificationContent()
                    content.title = mozi
                    content.body = mozi2
                    content.sound = UNNotificationSound.default
                    
                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: Double(time),
                    repeats: false)

                    // 直ぐに通知を表示
                    let request = UNNotificationRequest(identifier: "TIMER\(1)", content: content, trigger: trigger)
                    UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        } else if time2 != 0{
            let content = UNMutableNotificationContent()
                    content.title = mozi
                    content.body = mozi2
                    content.sound = UNNotificationSound.default
                    
                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: Double(time),
                    repeats: false)

                    // 直ぐに通知を表示
                    let request = UNNotificationRequest(identifier: "TIMER\(1)", content: content, trigger: trigger)
                    UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        } else if time3 != 0{
            let content = UNMutableNotificationContent()
                    content.title = mozi
                    content.body = mozi2
                    content.sound = UNNotificationSound.default
                    
                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: Double(time),
                    repeats: false)

                    // 直ぐに通知を表示
                    let request = UNNotificationRequest(identifier: "TIMER\(1)", content: content, trigger: trigger)
                    UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        }
        
    }
 
}

