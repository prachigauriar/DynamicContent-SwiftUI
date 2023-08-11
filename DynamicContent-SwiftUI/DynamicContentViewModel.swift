//
//  DynamicContentViewModel.swift
//  SwiftUIStuff
//
//  Created by Prachi Gauriar on 8/11/23.
//

import Foundation


enum DynamicContentViewModel : Identifiable {
    case text(String)
    case singleSelect(SingleSelectViewModel)
    case multiSelect(MultiSelectViewModel)
    
    
    var id: String {
        switch self {
        case .text(let string):
            return string
        case .singleSelect(let singleSelectViewModel):
            return singleSelectViewModel.prompt
        case .multiSelect(let multiSelectViewModel):
            return multiSelectViewModel.prompt
        }
    }
}
