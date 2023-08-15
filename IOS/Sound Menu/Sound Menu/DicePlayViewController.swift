//
//  DicePlayViewController.swift
//  Sound Menu
//
//  Created by 502-24 on 2022/11/07.
//

import UIKit
import AudioToolbox

class DicePlayViewController: UIViewController {
    var text:String = ""
    var soundBu: SystemSoundID = 0
    
    @IBOutlet weak var cellNo: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        cellNo.text = text
        var path: NSURL
        
        if(text == "Boing"){
            path = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Boing", ofType: "aiff")!)
            AudioServicesCreateSystemSoundID(path, &soundBu)
        }else if(text == "Indigo"){
            path = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Indigo", ofType: "aiff")!)
            AudioServicesCreateSystemSoundID(path, &soundBu)
        }else if(text == "Laugh"){
            path = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Laugh", ofType: "aiff")!)
            AudioServicesCreateSystemSoundID(path, &soundBu)
        }else if(text == "Monkey"){
            path = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Monkey", ofType: "aiff")!)
            AudioServicesCreateSystemSoundID(path, &soundBu)
        }else if(text == "Single Click"){
            path = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Single Click", ofType: "aiff")!)
            AudioServicesCreateSystemSoundID(path, &soundBu)
        }else{
            path = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Uh oh", ofType: "aiff")!)
            AudioServicesCreateSystemSoundID(path, &soundBu)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func Sb(_ sender: UIButton) {
        AudioServicesPlayAlertSound(soundBu)
    }
    
}
