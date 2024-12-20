//
//  TextModel.swift
//  MyTodo
//
//  Created by Aashish Ahlawat on 19/12/24.
//

import Foundation
import SwiftUI

struct TextModel: Codable {
    let text: String
    let font: MyFont
    let lineLimit: Int?
    let textAlignment: MyAlignment
    let textColor: MyColor
    let lineHeight: CGFloat
    let backgroundColor: MyColor
    let kerning: CGFloat
    
    init(text: String,
         font: MyFont,
         lineLimit: Int? = nil,
         textAlignment: MyAlignment,
         textColor: MyColor,
         lineHeight: CGFloat = 16.0,
         backgroundColor: MyColor = .init(color: .white),
         kerning: CGFloat = 0.0) {
        self.text = text
        self.font = font
        self.lineLimit = lineLimit
        self.textAlignment = textAlignment
        self.textColor = textColor
        self.lineHeight = lineHeight
        self.backgroundColor = backgroundColor
        self.kerning = kerning
    }
}
