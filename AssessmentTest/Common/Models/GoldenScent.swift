//
//  GoldenScent.swift
//  AssessmentTest
//
//  Created by Irfan Ahmed on 08/03/2021.
//


import Foundation

// MARK: - Welcome
struct GoldenScent: Codable {
    let rows: [Row]?
}

// MARK: - Row
struct Row: Codable {
    let rowMarginLeft, rowMarginRight, rowMarginBottom: String?
    let columns: [Column]?
    let height: String?

    enum CodingKeys: String, CodingKey {
        case rowMarginLeft = "row-margin-left"
        case rowMarginRight = "row-margin-right"
        case rowMarginBottom = "row-margin-bottom"
        case columns, height
    }
}

// MARK: - Column
struct Column: Codable {
    let type: String
    let src: String?
    let slides: [Slide]?
    let content, textAlign, fontColor, fontSize: String?
    let font: String?
    let background: Background?

    enum CodingKeys: String, CodingKey {
        case type, src, slides, content
        case textAlign = "text-align"
        case fontColor = "font-color"
        case fontSize = "font-size"
        case font, background
    }
}

// MARK: - Background
struct Background: Codable {
    let color: String?
}

// MARK: - Slide
struct Slide: Codable {
    let type: String?
    let src: String?
}

// MARK: - Columns
struct Columns: Codable {
    let type: String?
    let src: String?

    enum CodingKeys: String, CodingKey {
        case type = "type "
        case src = "src "
    }
}
