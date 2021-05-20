//
//  ContentView.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var controller: Controller

    @AppStorage("ShowButtons") var showButtons = false
    @AppStorage("ShowSide") var showSide = false

    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                if showButtons { Buttons(controller: controller) }
                Panafall(controller: controller)
                if showSide { Side(controller: controller) }
            }
            Bottom(controller: controller)

        }.frame(minWidth: 1030, maxWidth: .infinity, minHeight: 880, maxHeight: .infinity)

        .toolbar {
            ToolbarItemGroup() {
                HStack(spacing: 20) {
                    Button("Toggle") { controller.showBorder.toggle() }
                    Button("Toggle All") { controller.allEnabled.toggle() }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(controller: Controller())
    }
}
