//
//  TextView.swift
//  MyTodo
//
//  Created by Aashish Ahlawat on 19/12/24.
//

import SwiftUI

struct TextView: View {
    let textModel: TextModel
    
    init(textModel: TextModel) {
        self.textModel = textModel
    }
    
    var body: some View {
        Text(textModel.text)
            .font(.custom(textModel.font.name,
                          size: textModel.font.size))
            .fontWeight(textModel.font.weight.swiftUIFontWeight)
            .foregroundStyle(textModel.textColor.color.swiftUIColor)
            .lineLimit(textModel.lineLimit)
            .multilineTextAlignment(textModel.textAlignment.swiftUITextAlignment)
            .lineSpacing(textModel.lineHeight - textModel.font.size)
    }
}

#Preview {
    let textModel = TextModel(text: "What do you want to do today?", font: MyFont(name: "Lato", size: 20, weight: .regular), textAlignment: .leading, textColor: MyColor(color: .black))
    
    return TextView(textModel: textModel)
}

