//
//  SliderTest.swift
//  project4
//
//  Created by 502-24 on 2022/12/19.
//

import UIKit

class SliderTest: UISlider {

    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
            let width = self.frame.size.width
            let tapPoint = touch.location(in: self)
            let fPercent = tapPoint.x/width
            let nNewValue = self.maximumValue * Float(fPercent)
            if nNewValue != self.value {
                self.value = nNewValue
            }
            return true
        }

}
