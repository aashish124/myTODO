//
//  ContentView.swift
//  MyTodo
//
//  Created by Aashish Ahlawat on 19/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
//            Text("Hello, world!")
            let textModel = TextModel(text: "What do you want to do today?", font: MyFont(name: "Lato", size: 20, weight: .thin), textAlignment: .leading, textColor: MyColor(color: .black))
            TextView(textModel: textModel)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
