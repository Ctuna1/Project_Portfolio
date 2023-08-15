//
//  NCData.swift
//  Pocket Book
//
//  Created by 502-06 on 2022/12/12.
//

import UIKit

class NCData: NSObject {
    var ncIndex: Int = 0
    var ncName: String = ""
    var ncNo: String = ""
    var ncTel: String = ""
        init(pIndex: Int, pName: String, pNo: String, pTel: String) {
            ncIndex = pIndex
            ncName = pName
            ncNo = pNo
    ncTel = pTel
        }
}
