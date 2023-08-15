//
//  ViewController.swift
//  kbbo 2
//
//  Created by 502-13 on 2022/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var faceA: UIImageView!
    @IBOutlet weak var faceB: UIImageView!
    @IBOutlet weak var kbboA: UIImageView!
    @IBOutlet weak var kbboB: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    struct MyVariables { //구조체 생성 + 인스턴스 변수 생성 -> 액션 메소드들이 공통 참조 가능케함
                static var rnaa = 0 //rnhk
                static var rnbb = 0 //rnsd
                static var result = 0
            }
            
            var rnaa = MyVariables.rnaa // 인스턴스 변수를 변수로 선언
            var rnbb = MyVariables.rnbb
            var result = MyVariables.result
            
 
    @IBAction func kbbo1(_ sender: Any) {
                rnaa = Int(arc4random() % 3) //
                result = 0;

                if rnaa == 0{
                    kbboA.image = UIImage(named: "Kawi.png")
                }else if rnaa == 1{
                    kbboA.image = UIImage(named: "Bawi.png")
                }else{
                    kbboA.image = UIImage(named: "Bo.png")
                }
                
            }
    @IBAction func kbbo2(_ sender: Any) {
                rnbb = Int(arc4random() % 3)
                result = 0;
                
                switch rnbb
                {
                    case 0:
                        kbboB.image = UIImage(named: "Kawi.png")
                        if rnaa == 0 {
                            result = 0
                        }else if rnaa == 1{
                            result = 1
                        }else{
                            result = 2
                        }
                        NSLog("case 0")
                    
                    case 1:
                        kbboB.image = UIImage(named: "Bawi.png")
                        if rnaa == 0 {
                            result = 2
                        }else if rnaa == 1{
                            result = 0
                        }else{
                            result = 1
                        }
                        NSLog("case 1")
                    
                    case 2:
                        kbboB.image = UIImage(named: "Bo.png")
                        if rnaa == 0 {
                            result = 1
                        }else if rnaa == 1{
                            result = 2
                        }else{
                            result = 0
                        }
                        NSLog("case 2")
                            
                default:
                    break
                }
                NSLog("rnsd %d, rnhk %d, result %d", rnbb, rnaa, result);
                
                switch result
                {
                    case 0:
                    faceA.image = UIImage(named: "Soso.png")
                    faceB.image = UIImage(named: "Soso.png")
                    
                    case 2:
                    faceA.image = UIImage(named: "Angry.png")
                    faceB.image = UIImage(named: "Happy.png")
                            
                    case 1:
                    faceA.image = UIImage(named: "Happy.png")
                    faceB.image = UIImage(named: "Angry.png")
                            
                    default:
                        break
                }
}

}

