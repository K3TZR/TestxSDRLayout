//
//  Panafall.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/21/21.
//

import SwiftUI

struct Panafall: View {

    @AppStorage("ShowButtons") var showButtons = false
    @AppStorage("showBorder") var showBorder = false
    @AppStorage("allEnabled") var allEnabled = false

    @State var enabled = false

    var body: some View {
        HStack(spacing: 0) {
            if showButtons { Buttons() }
            VSplitView {
                Panadapter()
                Waterfall()
            }
        }
        .frame(minWidth: 400, maxWidth: .infinity, minHeight: 170, maxHeight: .infinity)
        .if((allEnabled || enabled) && showBorder) { view in view.border(Color(.textColor)) }
        .if((allEnabled || enabled) && !showBorder) { view in view.background(Color(.textColor).opacity(0.2)) }
    }
}

struct Panafall_Previews: PreviewProvider {
    static var previews: some View {
        Panafall()
    }
}
