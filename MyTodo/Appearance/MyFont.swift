//
//  MyFont.swift
//  MyTodo
//
//  Created by Aashish Ahlawat on 19/12/24.
//

import SwiftUI

struct MyFont: Codable {
    let name: String
    let size: CGFloat
    let weight: FontWeight
    
    var appFont: Font {
        return Font.custom("\(name)-\(weight.rawValue)", size: size)
    }
}

enum FontWeight: String, Codable, DefaultCaseEnum {
    case ultraLight
    case thin
    case light
    case regular
    case medium
    case semibold
    case bold
    case heavy
    case black
    case unknown
    
    static var defaultCase: FontWeight = .unknown
    
    var swiftUIFontWeight: Font.Weight {
        switch self {
        case .ultraLight:
            return .light
        case .thin:
            return .thin
        case .light:
            return .light
        case .regular:
            return .regular
        case .medium:
            return .regular
        case .semibold:
            return .bold
        case .bold:
            return .bold
        case .heavy:
            return .bold
        case .black:
            return .black
        case .unknown:
            return .regular
        }
    }
}
