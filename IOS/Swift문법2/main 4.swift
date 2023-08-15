//
//  main.swift
//  test 3
//
//  Created by 502-25 on 2022/11/14.
//

import Foundation

var strSet1: Set<Int> = [10,20,30,20]//얘는 set으로 초기화
var strSet2: Set<Int> = [30,40,50]
var emptySet: Set<Int> = []

var strArry = [10,20,30,20]//얘는 배열로 초기화, 중복허용

print(strSet1.count, strArry.count)

strSet1.insert(50)
print("strSet1: ",strSet1)
print("strSet2: ",strSet2)
print(strSet1.union(strSet2))//합집합
print(strSet1.subtracting(strSet2))//차집합
