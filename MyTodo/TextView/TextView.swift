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
            .kerning(textModel.kerning)
            .font(textModel.font.appFont)
            .fontWeight(textModel.font.weight.swiftUIFontWeight)
            .lineLimit(textModel.lineLimit)
            .multilineTextAlignment(textModel.textAlignment.swiftUITextAlignment)
            .lineSpacing(textModel.lineHeight - textModel.font.size)
            .foregroundStyle(textModel.textColor.color.swiftUIColor)
            .background(textModel.backgroundColor.color.swiftUIColor)
    }
    // TODO: Add attribute link behaviour/hyperlink
}

#Preview {
    let textModel = TextModel(text: "What do you want to do today?", font: MyFont(name: "Lato", size: 20, weight: .bold), textAlignment: .leading, textColor: MyColor(color: .black))
    
    return TextView(textModel: textModel)
}
