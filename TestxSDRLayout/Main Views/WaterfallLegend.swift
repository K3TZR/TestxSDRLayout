//
//  WaterfallLegend.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct WaterfallLegend: View {
    @ObservedObject var controller: Controller

    @State var enabled = false
    
    var body: some View {
        VStack {
            Button("WF Legend") { enabled.toggle() }.frame(width: 200).rotationEffect(.degrees(90)).foregroundColor(Color(.cyan))
        }
        .frame(minWidth: 30, maxWidth: 30, minHeight: 400, maxHeight: .infinity)
        .if((controller.allEnabled || enabled) && controller.showBorder) { view in view.border(Color(.cyan)) }
        .if((controller.allEnabled || enabled) && !controller.showBorder) { view in view.background(Color(.cyan).opacity(0.2)) }
    }
}

struct WaterfallLegend_Previews: PreviewProvider {
    static var previews: some View {
        WaterfallLegend(controller: Controller())
    }
}
