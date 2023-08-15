//
//  NCData.swift
//  project4
//
//  Created by 502-25 on 2022/12/08.
//

import UIKit

class NCData: NSObject {
    var ncIndex: Int = 0
    var ncName: String = ""
    var ncNo: String = ""
    var ncAddr: String = ""
    
    init(pIndex: Int, pName: String, pNo: String, pAddr: String){
        ncIndex = pIndex
        ncName = pName
        ncNo = pNo
        ncAddr = pAddr
    }
}
