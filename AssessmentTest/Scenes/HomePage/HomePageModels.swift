//
//  HomePageModels.swift
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

enum HomePage
{
    struct DisplayedGoldenScent {
        var goldenScents: [GoldenScents]

    }
    struct GoldenScents {
        var rowLeftPadding: CGFloat?
        var rowRightPadding: CGFloat?
        var rowBottomPadding: CGFloat?
        var height: CGFloat?
        var columns: [ColumnData]
    }
    
    struct ColumnData {
        var type: String
        var imgUrl: String?
        var slides: [SliderData]?
        var content: String?
        var textAlign: String?
        var fontColor: UIColor?
        let font: Double?
        let cellBackground: UIColor?
    }
    
    struct SliderData {
        let imgUrl: String?
    }
    

  // MARK: Use cases
  
  enum FetchGoldenScent
  {
    
    struct Request
    {
    }
    struct Response
    {
        var rows: [Row]?
    }
    struct ViewModel
    {
        var displayedRows: [DisplayedGoldenScent]

    }
  }
}
