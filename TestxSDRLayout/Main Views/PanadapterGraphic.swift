//
//  PanadapterGraphic.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/20/21.
//

import SwiftUI

struct PanadapterGraphic: View {
    @ObservedObject var controller: Controller

    @State var enabled = false

    var body: some View {
        VStack {
            Button("Panadapter Graphic") { enabled.toggle() }.foregroundColor(Color(.green))
        }
        .frame(minWidth: 800, maxWidth: .infinity, minHeight: 400, maxHeight: .infinity)
        .if((controller.allEnabled || enabled) && controller.showBorder) { view in view.border(Color(.green)) }
        .if((controller.allEnabled || enabled) && !controller.showBorder) { view in view.background(Color(.green).opacity(0.2)) }
    }
}

struct PanadapterGraphic_Previews: PreviewProvider {
    static var previews: some View {
        PanadapterGraphic(controller: Controller())
    }
}
