//
//  NameCardViewController.swift
//  Pocket Book
//
//  Created by 502-06 on 2022/12/12.
//

import UIKit

class NameCardViewController: UIViewController {
    var name: String = ""
    var no: String = ""
    var tel: String = ""
    
    @IBOutlet weak var ncName: UILabel!
    @IBOutlet weak var ncNo: UILabel!
    @IBOutlet weak var ncTel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ncName.text = self.name
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
