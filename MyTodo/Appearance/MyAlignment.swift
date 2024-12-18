//
//  MyAlignment.swift
//  MyTodo
//
//  Created by Aashish Ahlawat on 19/12/24.
//

import Foundation
import SwiftUI

enum MyAlignment: String, Codable, DefaultCaseEnum {
    case leading
    case trailing
    case center
    case unknown
    
    static var defaultCase: MyAlignment = .unknown
    
    var swiftUITextAlignment: TextAlignment {
        switch self {
        case .leading:
            return .leading
        case .trailing:
            return .trailing
        case .center:
            return .center
        case .unknown:
            return .center
        }
    }
}
