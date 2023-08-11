//
//  SingleSelectView.swift
//  SwiftUIStuff
//
//  Created by Prachi Gauriar on 8/11/23.
//

import Foundation
import SwiftUI


struct SingleSelectView : View {
    @ObservedObject var viewModel: SingleSelectViewModel
    
    
    var body: some View {
        DisclosureGroup(
            content: {
                ForEach(viewModel.options) { (option) in
                    Button(
                        action: { viewModel.select(option) },
                        label: {
                            HStack {
                                Text(option.text)
                                    .foregroundColor(.primary)
                                Spacer()
                                Image(systemName: viewModel.isSelected(option) ? "checkmark.circle.fill" :  "circle")
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
