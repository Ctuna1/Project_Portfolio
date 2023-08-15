//
//  main.swift
//  test 1
//
//  Created by 502-25 on 2022/11/14.
//

import Foundation
typealias faceType = (name:String, image:String, age:Int)

var faceOFAlice: faceType
var faceOFBob: faceType = ("Bob", "Smile", 31)//faceOFBob, 오른쪽 튜플값 가짐,faceOFBob 값 초기화
faceOFAlice = ("Alice", "Sad", 25)//faceOFAlice 값 초기화
print(faceOFAlice)
print(faceOFBob)
print(faceOFAlice.name, faceOFBob.name)//이름만 나오게
print(faceOFAlice.age, faceOFBob.age)//나이만 나오게
var faceOfTomy = ("Tomy", "so so", 18)//튜플형식이 faceType와 같아 자동으로 faceType을 갖는 것으로 설정됨
print(faceOFBob)
var faceOfNil: faceType?//옵셔널 초기화안해도 ok
print(faceOfNil)//nil,어떤 값으로도 초기화안됐다는게 뜸
faceOfNil = ("Nil", "Nothing", 0)
print(faceOfNil)//Optional((name: "Nil", type: "Nothing", age: 0)), 옵셔널 상자 안에 값있음
print(faceOfNil!)//상자서 꺼내기위해 언랩핑=!로  //옵셔널 바인딩
if let printOfNil = faceOfNil {//printOfNil = faceOfNil가 참이면
print(printOfNil)//프린트
}
