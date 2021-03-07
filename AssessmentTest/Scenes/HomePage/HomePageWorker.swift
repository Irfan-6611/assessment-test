//
//  HomePageWorker.swift
//  AssessmentTest
//
//  Created by Irfan Ahmed on 07/03/2021.
//  Copyright (c) 2021 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import UIKit

class HomePageWorker
{
    
    func readLocalFile<T: Codable>(forName name: String, completion: @escaping (T?) ->() ) {
        do {
            if let bundlePath = Bundle.main.path(forResource: name,
                                                 ofType: "json"),
                let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                completion(try jsonData.decoded())
            }
        } catch {
            completion(nil)
        }
        
        completion(nil)
    }
    
}