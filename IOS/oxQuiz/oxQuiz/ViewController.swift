//
//  ViewController.swift
//  oxQuiz
//
//  Created by 502-34 on 2022/09/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var exam: UILabel!
    @IBOutlet var num: UILabel!
    @IBOutlet var score: UILabel!
    @IBOutlet var string: UILabel!
    
    var oxQuiz1="Is steve jobs a singer ?"
    var oxQuiz2="Is apple a fruit ?"
    var oxQuiz3="Is tomato a fruit ?"
    var oxQuiz4="Is Lion a king of animals ?"
    var oxQuiz5="Is tiger queen of animals ?"
    
    var oxExam: Array<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        oxExam=[oxQuiz1,oxQuiz2,oxQuiz3,oxQuiz4,oxQuiz5]
        
        score.text = "0"
        updateExam()
    }
    func updateExam() {
        var rndNum:Int
        
        rndNum=Int(arc4random()%5)
        num.text=String(rndNum+1)
        
        exam.text=oxExam[rndNum]
    }
    
    
    @IBAction func ObtnPressed(_ sender: Any) {
        var _score: Int=Int(score.text!)!
        let _num: Int=Int(num.text!)!
        
        switch _num{
        case 2:
            fallthrough //그냥 넘어가서 다음 함수 적용
        case 4:
            score.text=String(_score+10)
            _score += 10
        case 1:
            fallthrough
        case 3:
            fallthrough
        case 5:
            score.text=String(_score-10)
            _score -= 10
        default:
            break
        }
        updateExam()
        if(_score == 100){
            string.text=("congratulations")
        }
    }
    
    
    @IBAction func XbtnPressed(_ sender: Any) {
        var _score: Int=Int(score.text!)!
        let _num: Int=Int(num.text!)!
        
        switch _num{
        case 2:
            fallthrough //그냥 넘어가서 다음 함수 적용
        case 4:
            score.text=String(_score-10)
            _score -= 10
        case 1:
            fallthrough
        case 3:
            fallthrough
        case 5:
            score.text=String(_score+10)
            _score += 10
        default:
            break
        }
        updateExam()
        if(_score == 100){
            string.text=("congratulations")
        }
    }
}
