//
//  SwiftUIStuffApp.swift
//  SwiftUIStuff
//
//  Created by Prachi Gauriar on 8/10/23.
//

import SwiftUI

@main
struct App : SwiftUI.App {
    @State var dynamicContentViewModels: [DynamicContentViewModel] = [
        .singleSelect(
            .init(
                prompt: "Select an Option",
                options: [
                    .init(text: "Red", id: "red"),
                    .init(text: "Orange", id: "orange"),
                    .init(text: "Yellow", id: "yellow"),
                ]
            )
        ),
        .text("Green"),
        .multiSelect(
            .init(
                prompt: "Select Some Options",
                options: [
                    .init(text: "Blue", id: "blue"),
                    .init(text: "Indigo", id: "indigo"),
                    .init(text: "Violet", id: "violet"),
                ]
            )
        ),
    ]
    
    
    var body: some Scene {
        WindowGroup {
            List(dynamicContentViewModels) { (dynamicContentViewModel) in
                DynamicContentView(viewModel: dynamicContentViewModel)
            }
        }
    }
}
