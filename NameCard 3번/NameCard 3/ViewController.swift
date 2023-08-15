//
//  ViewController.swift
//  NameCard 3
//
//  Created by 502-06 on 2022/09/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var studentNo: UILabel!
    @IBOutlet weak var studentname: UILabel!
    @IBOutlet weak var studentphoto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func b1(_ sender: Any) {
        studentNo.text = "12345678"
        studentname.text="하니"
        studentphoto.image = UIImage(named: "3.jpg")
    }
    
    @IBAction func b2(_ sender: Any) {
        studentNo.text = "12345678"
        studentname.text="수지"
        studentphoto.image = UIImage(named: "2.jpg")
    }
    
    @IBAction func b3(_ sender: Any) {
        studentNo.text = "12345678"
        studentname.text="장원영"
        studentphoto.image = UIImage(named: "1.jpg")
    }
}

