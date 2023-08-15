//
//  ViewController.swift
//  Olympic
//
//  Created by 502-03 on 2022/11/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Rank: UILabel!
    @IBOutlet weak var Country: UIImageView!
    @IBOutlet weak var Gold: UILabel!
    @IBOutlet weak var Silver: UILabel!
    @IBOutlet weak var Bronze: UILabel!

    var num = 0
    
    typealias olympicRank = (name: String, gold: Int, silver: Int, bronze: Int)
    
    var tokyo2020: Array<olympicRank> = [("USA", 39, 41, 33), ("China", 38, 32, 18), ("Japan", 27, 14, 17)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Rank.text = String(num+1)
        Gold.text=String(tokyo2020[num].gold)
        Silver.text=String(tokyo2020[num].silver)
        Bronze.text=String(tokyo2020[num].bronze)

        Country.image=UIImage(named:"미국.png")
        
        num=num+1
    }

    @IBAction func Click(_ sender: UIButton) {
        Rank.text = String(num+1)
        Gold.text=String(tokyo2020[num].gold)
        Silver.text=String(tokyo2020[num].silver)
        Bronze.text=String(tokyo2020[num].bronze)
        
        if num == 0{
            Country.image=UIImage(named:"미국.png")
        }else if num == 1{
            Country.image=UIImage(named:"중국.png")
        }else if num == 2{
            Country.image=UIImage(named:"일본.gif")
        }
        
        num=num+1
        if num >= 3 {
            num = 0
        }

    }
    
}

