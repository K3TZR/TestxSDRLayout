//
//  FrequencyLegend.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct FrequencyLegend: View {
    @ObservedObject var controller: Controller

    @State var enabled = false

    var body: some View {
        HStack(spacing: 0) {
            Button("Frequency Legend") { enabled.toggle() }.foregroundColor(Color(.magenta))
        }
        .frame(minWidth: 800 + 30, maxWidth: .infinity, minHeight: 20, maxHeight: 20)
        .if((controller.allEnabled || enabled) && controller.showBorder) { view in view.border(Color(.magenta)) }
        .if((controller.allEnabled || enabled) && !controller.showBorder) { view in view.background(Color(.magenta).opacity(0.2)) }
    }
}

struct FrequencyLegend_Previews: PreviewProvider {
    static var previews: some View {
        FrequencyLegend(controller: Controller())
    }
}
