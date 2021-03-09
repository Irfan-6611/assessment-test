//
//  Int+Extension.swift
//  AssessmentTest
//
//  Created by Irfan Ahmed on 08/03/2021.
//

import UIKit

extension Int {
    static func parse(from string: String) -> Int? {
        return Int(string.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
    }
}

extension LosslessStringConvertible {
    var string: String { .init(self) }
}
