//
//  ViewController.swift
//  Frog
//
//  Created by Sunghyun Yun on 2021/10/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var frogCount: UILabel!
    @IBOutlet var elapsedTime: UILabel!
    
    @IBOutlet var name1: UIButton!
    @IBOutlet var name2: UIButton!
    @IBOutlet var name3: UIButton!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    
    @IBOutlet var score1: UILabel!
    @IBOutlet var score2: UILabel!
    @IBOutlet var score3: UILabel!
    
    @IBOutlet var currentPlayer: UILabel!
    
    @IBOutlet var gameOn1: UISwitch!
    @IBOutlet var gameOn2: UISwitch!
    @IBOutlet var gameOn3: UISwitch!

    var buttonArray: Array<UIButton> = []
    var mark: Array<String> = []
    var frog: Array<UIImage> = []
    var startTime = Date()
    var elapTime = 0.0
    var numOfFrog = 0
    var catchFrog: UIImage! = UIImage(named: "catch.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        buttonArray = [button1, button2, button3, button4, button5, button6]
        mark = ["1", "2", "3", "4", "5", "6"]
        
        for i in 0..<6 {
            buttonArray[i].setTitle(mark[i], for: UIControl.State.normal)
        }
    }

    @IBAction func player1Start(_ sender: UIButton) {
        if numOfFrog == 0 {
            currentPlayer.text = name1.currentTitle
            startTime = Date()
            nextGame()
            buttonUpdate()
        }
    }
    
    @IBAction func player2Start(_ sender: UIButton) {
        if numOfFrog == 0 {
            currentPlayer.text = name2.currentTitle
            startTime = Date()
            nextGame()
            buttonUpdate()
        }
    }
    
    @IBAction func player3Start(_ sender: UIButton) {
        if numOfFrog == 0 {
            currentPlayer.text = name3.currentTitle
            startTime = Date()
            nextGame()
            buttonUpdate()
        }
    }
    
    @IBAction func holeButtonPressed(_ sender: UIButton) {
        var elap = 0.0
        
        if numOfFrog != 0 {
            if sender.currentTitle == "X" {
                numOfFrog -= 1
                if numOfFrog == 0 {
                    elapTime = Date().timeIntervalSince(startTime)
                    rankUpdate()
                } else {
                    elap = Date().timeIntervalSince(startTime)
                    elapsedTime.text = String(format: "%.2f", elap)
                    buttonUpdate()
                }
                frogCount.text = String(numOfFrog)
            }
        }
    }
    
    func buttonUpdate() {
        let rndNum = arc4random() % 6
        
        for i in 0..<6 {
            buttonArray[i].setTitle(mark[i], for: UIControl.State.normal)
            buttonArray[i].setTitleColor(UIColor.white, for: UIControl.State.normal)
            buttonArray[i].setBackgroundImage(UIImage(named: "Hole.png"), for: UIControl.State.normal)
        }
        
        buttonArray[Int(rndNum)].setTitle("X", for: UIControl.State.normal)
        buttonArray[Int(rndNum)].setBackgroundImage(UIImage(named: "catch.png"), for: UIControl.State.normal)
    }
    
    func rankUpdate() {
        let score = String(format: "%.2f", elapTime)
        
        elapsedTime.text = score
        elapTime = 0.0
        
        if currentPlayer.text == name1.currentTitle {
            score1.text = score
        } else if currentPlayer.text == name2.currentTitle {
            score2.text = score
        } else if currentPlayer.text == name3.currentTitle {
            score3.text = score
        }
    }
    
    func nextGame() {
        numOfFrog = 10
        frogCount.text = String(numOfFrog)
        elapsedTime.text = "0"

        for i in 0..<6 {
            buttonArray[i].setTitle(mark[i], for: UIControl.State.normal)
            buttonArray[i].setTitleColor(UIColor.white, for: UIControl.State.normal)
        }
    }
}

