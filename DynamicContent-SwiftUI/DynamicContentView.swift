//
//  ContentView.swift
//  SwiftUIStuff
//
//  Created by Prachi Gauriar on 8/10/23.
//

import SwiftUI


struct DynamicContentView : View {
    let viewModel: DynamicContentViewModel
    
    
    var body: some View {
        switch viewModel {
        case .text(let string):
            Text(string)
        case .singleSelect(let singleSelectViewModel):
            SingleSelectView(viewModel: singleSelectViewModel)
        case .multiSelect(let multiSelectViewModel):
            MultiSelectView(viewModel: multiSelectViewModel)
        }
    }
}
