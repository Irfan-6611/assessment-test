//
//  Codable+Extension.swift
//  AssessmentTest
//
//  Created by Irfan Ahmed on 08/03/2021.
//

import UIKit

extension Encodable {
    func encoded() throws -> Data {
        return try JSONEncoder().encode(self)
    }
}

extension Data {
    func decoded<T: Decodable>() throws -> T {
        return try JSONDecoder().decode(T.self, from: self)
    }
}
