//
//  SingleSelectViewModel.swift
//  SwiftUIStuff
//
//  Created by Prachi Gauriar on 8/11/23.
//

import Foundation


final class SingleSelectViewModel : ObservableObject {
    @Published var prompt: String
    @Published var options: [SelectionOption]
    @Published var selection: SelectionOption? = nil
    
    
    init(prompt: String, options: [SelectionOption]) {
        self.prompt = prompt
        self.options = options
    }
    
    
    func select(_ option: SelectionOption) {
        self.selection = option
    }
    
    
    func isSelected(_ option: SelectionOption) -> Bool {
        return selection == option
    }
}
