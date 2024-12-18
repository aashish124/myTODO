//
//  DefaultCaseEnum.swift
//  MyTodo
//
//  Created by Aashish Ahlawat on 19/12/24.
//

import Foundation

protocol DefaultCaseEnum: CaseIterable, RawRepresentable where RawValue == String {
    static var defaultCase: Self { get }
    init(rawValue: RawValue)
}

extension DefaultCaseEnum {
    init(rawValue: RawValue) {
        if let value = Self.allCases.first(where: { $0.rawValue.lowercased() == rawValue.lowercased()}) {
            self = value
        } else {
            self = Self.defaultCase
        }
    }
}
