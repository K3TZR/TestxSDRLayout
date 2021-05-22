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
    @AppStorage("numberOfPanadapters") var numberOfPanadapters = 0

    var body: some View {
        HStack {
            VSplitView {
                Panafalls()
                Bottom()
            }
            if showSide { Side() }
        }.frame(minWidth: 610, maxWidth: .infinity, minHeight: 250, maxHeight: .infinity)

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
                    Button("+Pan") { numberOfPanadapters = (numberOfPanadapters + 1) % 4 }
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
