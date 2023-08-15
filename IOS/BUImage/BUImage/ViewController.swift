//
//  ViewController.swift
//  BUImage
//
//  Created by 502-13 on 2022/11/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var play: UIBarButtonItem!
    @IBOutlet weak var page: UIBarButtonItem!
    
    var imgs : Array<UIImage> = []
    var currentSel : Int = 0
    var speed : Float = 0
    var frog1Img = UIImage(named: "frog1.png")
    var frog2Img = UIImage(named: "frog2.png")
    var frog3Img = UIImage(named: "frog3.png")
    var frog4Img = UIImage(named: "frog4.png")
    var Boing: SystemSoundID = 0
    var Indigo: SystemSoundID = 0
    var i = 0
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = frog1Img
        imgs = [frog1Img!, frog2Img!, frog3Img!, frog4Img!]
        imgView.animationImages = imgs
        currentSel = 0
        speed = 0.5
        
        var path: NSURL

         path = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Boing", ofType: "aiff")!)
         AudioServicesCreateSystemSoundID(path, &Boing)
         path = NSURL(fileURLWithPath: Bundle.main.path(forResource: "Indigo", ofType: "aiff")!)
         AudioServicesCreateSystemSoundID(path, &Indigo)
    }

    @IBAction func onSpeed(_ sender: UISlider) {
        speed = sender.value
        if imgView.isAnimating {
        imgView.animationDuration = TimeInterval(speed * 5.0)
        imgView.startAnimating()
        }
    }
    
    
    @IBAction func onPlayStop(_ sender: UIBarButtonItem) {
        if imgView.isAnimating {
            imgView.stopAnimating()
            play.title = "Play"
            AudioServicesPlayAlertSound(Indigo)
            
        } else {
            imgView.animationDuration = TimeInterval(speed * 5.0) //속도
            imgView.animationRepeatCount = 0
            imgView.startAnimating()
            play.title = "Stop"
            AudioServicesPlayAlertSound(Boing)
        }
    }
    @IBAction func onPrev(_ sender: UIBarButtonItem) {
        self.i = i-1
        imgView.image = imgs[i]
        page.title = String(i+1) + "/4"
    }
    @IBAction func onNext(_ sender: UIBarButtonItem) {
        self.i = i+1
        imgView.image = imgs[i]
        page.title = String(i+1) + "/4"
    }
    
    
    
}

