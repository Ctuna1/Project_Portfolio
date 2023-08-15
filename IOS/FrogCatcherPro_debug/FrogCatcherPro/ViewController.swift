//
//  ViewController.swift
//  FrogCatcherPro
//
//  Created by bayster on 2022/10/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var currentPlayer: UILabel!
    @IBOutlet weak var frogCount: UILabel!
    @IBOutlet weak var elapsedTime: UILabel!
    
    @IBOutlet weak var name1: UIButton!
    @IBOutlet weak var name2: UIButton!
    @IBOutlet weak var name3: UIButton!
    
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var score3: UILabel!
    
    @IBOutlet weak var holeButton1: UIButton!
    @IBOutlet weak var holeButton2: UIButton!
    @IBOutlet weak var holeButton3: UIButton!
    @IBOutlet weak var holeButton4: UIButton!
    @IBOutlet weak var holeButton5: UIButton!
    
    var buttonArray: Array<UIButton> = []
    var mark: Array<String> = []
    var startTime: Date = Date()
    var elapTime = 0.0
    var numOfFrog = 0
    var catchFrog: UIImage! = UIImage(named: "catch.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonArray = [holeButton1, holeButton2, holeButton3, holeButton4, holeButton5]
        mark = ["1", "2", "3", "4", "5"]
        
        for i in 0..<5 {
            buttonArray[i].setTitle(mark[i], for: UIControl.State.normal)
        }
        numOfFrog = 0
    }
    
    func buttonUpdate() {
        let rndNum = arc4random() % 5
        for i in 0..<5 {
            buttonArray[i].setTitle(mark[i], for: UIControl.State.normal)
            buttonArray[i].setTitleColor(UIColor.white, for: UIControl.State.normal)
            buttonArray[i].setBackgroundImage(UIImage(named: "Hole.png"), for: UIControl.State.normal)
        }
        buttonArray[Int(rndNum)].setTitle("X", for:UIControl.State.normal)
        buttonArray[Int(rndNum)].setBackgroundImage(UIImage(named: "catch.png"), for:UIControl.State.normal)
    }
    
    func rankUpdate() {
        let score = String(format: "%.2f", elapTime)
        elapsedTime.text = score
        elapTime = 0.0 // reset
        if currentPlayer.text == name1.titleLabel?.text {
            score1.text = score
        }
        else if currentPlayer.text == name2.titleLabel?.text {
            score2.text = score
        }
        else if currentPlayer.text == name3.titleLabel?.text {
            score3.text = score
        }
    }
    
    func nextGame() {
        frogCount.text = String(format:"%d", numOfFrog)
        elapsedTime.text = "0"
        for i in 0..<5 {
            numOfFrog = 10
            buttonArray[i].setTitle(mark[i],for: UIControl.State.normal)
            buttonArray[i].setTitleColor(UIColor.white, for: UIControl.State.normal)
        }
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func player1Start(_ sender: UIButton) {
        if numOfFrog == 0 {
            currentPlayer.text = sender.titleLabel?.text
            startTime = Date()
            nextGame()
            buttonUpdate()
        }
    }
    
    @IBAction func player2Start(_ sender: UIButton) {
        if numOfFrog == 0 {
            currentPlayer.text = name2.titleLabel?.text
            startTime = Date()
            nextGame()
            buttonUpdate()
        }
    }
    
    @IBAction func player3Start(_ sender: UIButton) {
        if numOfFrog == 0 {
            currentPlayer.text = name3.titleLabel?.text
            startTime = Date()
            nextGame()
            buttonUpdate()
        }
    }
    
    @IBAction func holeButtonPressed(_ sender: UIButton) {
        var elap = 0.0
        if numOfFrog != 0 { // Game is on
            if sender.currentTitle == "X" {
                numOfFrog -= 1
                if numOfFrog <= 0 {
                    numOfFrog = 0
                    elapTime = Date().timeIntervalSince(startTime)
                    rankUpdate()
                }
                else {
                    elap = Date().timeIntervalSince(startTime)
                    elapsedTime.text = String(format: "%.2f", elap)
                    buttonUpdate()
                }
                frogCount.text = String(format: "%d", numOfFrog)
            }
        }
    }
}

