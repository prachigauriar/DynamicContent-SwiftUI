//
//  MultiSelectView.swift
//  SwiftUIStuff
//
//  Created by Prachi Gauriar on 8/11/23.
//

import Foundation
import SwiftUI


struct MultiSelectView : View {
    @ObservedObject var viewModel: MultiSelectViewModel
    
    
    var body: some View {
        DisclosureGroup(
            content: {
                ForEach(viewModel.options) { (option) in
                    Button(
                        action: { viewModel.toggleSelection(of: option) },
                        label: {
                            HStack {
                                Text(option.text)
                                    .foregroundColor(.primary)
                                Spacer()
                                Image(systemName: viewModel.isSelected(option) ? "checkmark.square.fill" : "square")
                                    .foregroundColor(.accentColor)
                            }
                        }
                    )
                }
            },
            label: {
                Text(viewModel.prompt)
            }
        )
    }
}
