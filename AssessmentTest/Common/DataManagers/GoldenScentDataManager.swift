//
//  GoldenScentDataManager.swift
//  AssessmentTest
//
//  Created by Irfan Ahmed on 08/03/2021.
//

import Foundation

protocol ReadLocalFileInjected { }

struct ReadLocalFileInjector {
    static let localDBManager: GoldenScentDataManager = GoldenScentLocalDBManager()
}

extension ReadLocalFileInjected{
    var localDBManager: GoldenScentDataManager{
        return ReadLocalFileInjector.localDBManager
    }
}

protocol GoldenScentDataManager: class {
    func readLocalFile<T: Codable>(forName name: String, completion: (T?) ->() ) 
}

extension GoldenScentDataManager{

    func readLocalFile<T: Codable>(forName name: String, completion: (T?) ->() ) {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
                let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                completion(try jsonData.decoded())
            }
        } catch {
            completion(nil)
        }
    }

}

class GoldenScentLocalDBManager: GoldenScentDataManager { }
