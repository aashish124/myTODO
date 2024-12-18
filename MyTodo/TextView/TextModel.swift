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
    
    init(text: String,
         font: MyFont,
         lineLimit: Int? = nil,
         textAlignment: MyAlignment,
         textColor: MyColor,
         lineHeight: CGFloat = 16.0) {
        self.text = text
        self.font = font
        self.lineLimit = lineLimit
        self.textAlignment = textAlignment
        self.textColor = textColor
        self.lineHeight = lineHeight
    }
}
