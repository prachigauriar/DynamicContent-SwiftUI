//
//  MultiSelectViewModel.swift
//  SwiftUIStuff
//
//  Created by Prachi Gauriar on 8/11/23.
//

import Foundation


final class MultiSelectViewModel : ObservableObject {
    @Published var prompt: String
    @Published var options: [SelectionOption]
    @Published var selections: Set<SelectionOption> = []
    
    
    init(prompt: String, options: [SelectionOption]) {
        self.prompt = prompt
        self.options = options
    }
    
    
    func isSelected(_ option: SelectionOption) -> Bool {
        return selections.contains(option)
    }
    
    
    func toggleSelection(of option: SelectionOption) {
        if selections.contains(option) {
            selections.remove(option)
        } else {
            selections.insert(option)
        }
    }
}
