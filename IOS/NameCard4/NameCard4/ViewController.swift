//
//  ViewController.swift
//  NameCard4
//
//  Created by 502-06 on 2022/09/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var im: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var num: UILabel!
    var cnt=0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func bu(_ sender: Any) {
        /*
        cnt += 1
        if((cnt%3)==2){
        num.text = "12345678"
        name.text="하니"
        im.image = UIImage(named: "3.jpg")
        }
        else if((cnt%3)==1){
        num.text = "12345678"
        name.text="수지"
        im.image = UIImage(named: "2.jpg")
        }
        else if((cnt%3)==0){
        num.text = "12345678"
        name.text="장원영"
        im.image = UIImage(named: "1.jpg")
        }
        */
         cnt += 1
         cnt %= 3
         switch cnt{
         case 0:
            num.text = "12345678"
            name.text="장원영"
            im.image = UIImage(named: "1.jpg")
            break
         case 1:
            num.text = "12345678"
            name.text="수지"
            im.image = UIImage(named: "2.jpg")
            break
         case 2:
            num.text = "12345678"
            name.text="하니"
            im.image = UIImage(named: "3.jpg")
            break
         default:
            num.text = "err"
            name.text="err"
            im.image = UIImage(named: "1.jpg")
         }
       
    }
    
    
}

