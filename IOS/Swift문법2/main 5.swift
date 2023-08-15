//
//  main.swift
//  test 4
//
//  Created by 502-25 on 2022/11/14.
//

import Foundation

enum mathGrade: String{
    case exellent = "A"
    case good = "B"
    case average = "C"
    case poor = "D"
    case fail = "F"

}
var mathScore: mathGrade = mathGrade.exellent //mathGrade 중 exellent 값을 mathScore가 갖도록
print(mathScore)
print(mathScore.rawValue)//exellent의 원시값인 A가 출력
