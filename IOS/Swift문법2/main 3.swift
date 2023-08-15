//
//  main.swift
//  test2
//
//  Created by 502-25 on 2022/11/14.
//

import Foundation

var cityName: Dictionary<String, String> = ["Korea":"seoul","Japen":"Tokyo",]
var montnName: [String:Int] = ["mar":3,"feb":2]
var weekName: ["Mon" : "Monday","Tue" : "Tuesday"]
var emptyDic: [String: String] = [:]

print(cityName,montnName, weekName)
print(cityName["Korea"])
print(cityName["Korea"]!)//딕셔너리 요소= 옵셔널 싸여있음

if let _motnName = motnName["Mar"] {
    print(_motnName)
}

cityName.updateValue("Washigton DC", forkey: "USA")
print(cityName) //딕셔너리 =순서는 상관 없지만, 키값이 중복되면 x

