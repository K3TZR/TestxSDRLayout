//
//  Buttons.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct Buttons: View {
    @ObservedObject var controller: Controller

    @State var enabled = false

    var body: some View {
        VStack {
            Button("Buttons") { enabled.toggle() }.foregroundColor(Color(.red))
        }
        .frame(minWidth: 60, maxWidth: 60, minHeight: 820, maxHeight: .infinity)
        .if((controller.allEnabled || enabled) && controller.showBorder) { view in view.border(Color(.red)) }
        .if((controller.allEnabled || enabled) && !controller.showBorder) { view in view.background(Color(.red).opacity(0.2)) }
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons(controller: Controller())
    }
}
