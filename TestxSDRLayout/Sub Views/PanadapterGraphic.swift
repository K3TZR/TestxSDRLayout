//
//  PanadapterGraphic.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/20/21.
//

import SwiftUI

struct PanadapterGraphic: View {
//    let height: CGFloat
//    let width: CGFloat

    @AppStorage("showBorder") var showBorder = false
    @AppStorage("allEnabled") var allEnabled = false

    @State var enabled = false

    var body: some View {
        GeometryReader { geo in
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button("Panadapter Graphic (\(Int(geo.size.height)) x \(Int(geo.size.width)))") { enabled.toggle() }.foregroundColor(Color(.green))
                    Spacer()
                }
                Spacer()
            }
        }
        .frame(minWidth: 400, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
        .if((allEnabled || enabled) && showBorder) { view in view.border(Color(.green)) }
        .if((allEnabled || enabled) && !showBorder) { view in view.background(Color(.green).opacity(0.2)) }
    }
}

struct PanadapterGraphic_Previews: PreviewProvider {
    static var previews: some View {
//        PanadapterGraphic(height: 200, width: 600)
        PanadapterGraphic()
    }
}
