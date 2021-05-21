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
        GeometryReader { geo in
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button("Waterfall Graphic (\(Int(geo.size.height)) x \(Int(geo.size.width)))") { enabled.toggle() }.foregroundColor(Color(.blue))
                    Spacer()
                }
                Spacer()
            }
        }
        .frame(minWidth: 600, maxWidth: .infinity, minHeight: 200, maxHeight: .infinity)
        .if((allEnabled || enabled) && showBorder) { view in view.border(Color(.blue)) }
        .if((allEnabled || enabled) && !showBorder) { view in view.background(Color(.blue).opacity(0.2)) }
    }
}

struct WaterfallGraphic_Previews: PreviewProvider {
    static var previews: some View {
        WaterfallGraphic()
    }
}
