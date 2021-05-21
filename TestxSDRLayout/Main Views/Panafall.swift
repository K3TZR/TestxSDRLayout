//
//  Panafall.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct Panafall: View {

    @AppStorage("showBorder") var showBorder = false
    @AppStorage("allEnabled") var allEnabled = false

    @State var enabled = false

    var body: some View {
        VSplitView {
            Panadapter()
            Waterfall()
        }
        .frame(minWidth: 600, maxWidth: .infinity, minHeight: 420, maxHeight: .infinity)
        .if((allEnabled || enabled) && showBorder) { view in view.border(Color(.textColor)) }
        .if((allEnabled || enabled) && !showBorder) { view in view.background(Color(.textColor).opacity(0.2)) }
        
    }
}

struct Panafall_Previews: PreviewProvider {
    static var previews: some View {
        Panafall()
    }
}
