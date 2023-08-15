//
//  main.swift
//  test
//
//  Created by 502-25 on 2022/11/14.
//

import Foundation

typealias faceType = (name:String, image:String, age:Int)

var name: Array<String> = ["Alice", "Bob"]
var age : [Int] = [31,25]
var emotion = ["Smile", "Sad"]

var faceAlice: faceType = (name[0], emotion[0], age[0])//변수,튜플로 초기화 & faceType튜플형식에 맞게
var faceBob: faceType = (name[1], emotion[1], age[1])

print(faceAlice,faceBob)
print(faceAlice.name, faceBob.name)//이름만 출력
print(faceAlice.age, faceBob.age)

name.append("Tommy")//배열 요소 추가, append
age.append(18)
emotion.append("So so")
var faceTommy: faceType = (name[2], emotion[2], age[2])
print(faceTommy)

print(name.count,emotion.count, age.count)//name,emotion,age 배열요소 3개 있음을 카운트


