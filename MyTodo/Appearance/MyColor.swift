//
//  MyColor.swift
//  MyTodo
//
//  Created by Aashish Ahlawat on 19/12/24.
//

import Foundation
import SwiftUI

struct MyColor: Codable {
    let color: CustomColor
    let alpha: CGFloat
    
    init(color: CustomColor, alpha: CGFloat = 1.0) {
        self.color = color
        self.alpha = alpha
    }
}

enum CustomColor: String, Codable, DefaultCaseEnum {
    case red
    case yellow
    case white
    case black
    case blue
    case green
    case orange
    case purple
    case pink
    case gray
    case brown
    case teal
    case indigo
    case cyan
    case lightGray
    case darkGray
    case lightBlue
    case lightGreen
    case lightPink
    case darkRed
    case navy
    case lavender
    case coral
    case gold
    case silver
    case cream
    case peach
    case unknown
    
    static var defaultCase: CustomColor = .unknown
    
    var swiftUIColor: Color {
        switch self {
        case .red:
            return .red
        case .yellow:
            return .yellow
        case .white:
            return .white
        case .black:
            return .black
        case .blue:
            return .blue
        case .green:
            return .green
        case .orange:
            return .orange
        case .purple:
            return .purple
        case .pink:
            return .pink
        case .gray:
            return .gray
        case .brown:
            return .brown
        case .teal:
            return .teal
        case .indigo:
            return .indigo
        case .cyan:
            return .cyan
        case .lightGray:
            return .gray.opacity(0.3)  // Light gray
        case .darkGray:
            return .gray.opacity(0.7)  // Dark gray
        case .lightBlue:
            return Color.blue.opacity(0.3)  // Light blue
        case .lightGreen:
            return Color.green.opacity(0.3)  // Light green
        case .lightPink:
            return Color.pink.opacity(0.3)  // Light pink
        case .darkRed:
            return Color.red.opacity(0.7)  // Dark red
        case .navy:
            return Color(red: 0.0, green: 0.0, blue: 0.5)  // Navy blue
        case .lavender:
            return Color(red: 0.7, green: 0.7, blue: 1.0)  // Lavender
        case .coral:
            return Color(red: 1.0, green: 0.5, blue: 0.31)  // Coral
        case .gold:
            return Color(red: 1.0, green: 0.84, blue: 0.0)  // Gold
        case .silver:
            return Color(red: 0.75, green: 0.75, blue: 0.75)  // Silver
        case .cream:
            return Color(red: 1.0, green: 1.0, blue: 0.8)  // Cream
        case .peach:
            return Color(red: 1.0, green: 0.8, blue: 0.6)  // Peach
        default:
            return .white
        }
    }
}
