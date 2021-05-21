//
//  ContentView.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct ContentView: View {

    @AppStorage("showBorder") var showBorder = false
    @AppStorage("allEnabled") var allEnabled = false
    @AppStorage("ShowButtons") var showButtons = false
    @AppStorage("ShowSide") var showSide = false

    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                if showButtons { Buttons() }
                Panafall()
                if showSide { Side() }
            }
            Bottom()

        }.frame(minWidth: 1030, maxWidth: .infinity, minHeight: 880, maxHeight: .infinity)

        .toolbar {
            ToolbarItemGroup(placement: .cancellationAction) {
                Image(systemName: "sidebar.left")
                    .font(.system(size: 24, weight: .regular))
                    .foregroundColor(showButtons ? .accentColor : .secondary)
                    .onTapGesture(perform: {
                        withAnimation {
                            showButtons.toggle()
                        }
                    })
                    Spacer()
                    Button("Border / Color") { showBorder.toggle() }
                    Button("Toggle All") { allEnabled.toggle() }

                Image(systemName: "sidebar.right")
                    .font(.system(size: 24, weight: .regular))
                    .foregroundColor(showSide ? .accentColor : .secondary)
                    .onTapGesture(perform: {
                        withAnimation {
                            showSide.toggle()
                        }
                    })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
