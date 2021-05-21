//
//  WaterfallGraphic.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct WaterfallGraphic: View {

    @AppStorage("showBorder") var showBorder = false
    @AppStorage("allEnabled") var allEnabled = false

    @State var enabled = false

    var body: some View {
        VStack {
            Button("Waterfall Graphic") { enabled.toggle() }.foregroundColor(Color(.blue))
        }
        .frame(minWidth: 800, maxWidth: .infinity, minHeight: 400, maxHeight: .infinity)
        .if((allEnabled || enabled) && showBorder) { view in view.border(Color(.blue)) }
        .if((allEnabled || enabled) && !showBorder) { view in view.background(Color(.blue).opacity(0.2)) }
    }
}

struct WaterfallGraphic_Previews: PreviewProvider {
    static var previews: some View {
        WaterfallGraphic()
    }
}