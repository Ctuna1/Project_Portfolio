//
//  ListViewController.swift
//  project4
//
//  Created by 502-25 on 2022/12/07.
//

import UIKit

class ListViewController: UIViewController {
    @IBOutlet weak var ncName: UILabel!
    @IBOutlet weak var ncNo: UILabel!
    @IBOutlet weak var ncAddr: UILabel!
    
    var name: String = ""
    var No: String = ""
    var Addr: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ncName.text = self.name//ncName 아울렛의 레이블 위의 텍스트에 테이블뷰로부터 넘겨받은 ncData.ncName 저장
        ncNo.text = self.No
        ncAddr.text = self.Addr
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
