//
//  FrequencyLegend.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct FrequencyLegend: View {

    @AppStorage("showBorder") var showBorder = false
    @AppStorage("allEnabled") var allEnabled = false

    @State var enabled = false

    var body: some View {
        GeometryReader { geo in
            HStack(spacing: 0) {
                Spacer()
                Button("Frequency Legend (\(Int(geo.size.height)) x \(Int(geo.size.width)))") { enabled.toggle() }.foregroundColor(Color(.magenta))
                Spacer()
            }
        }
        .frame(minWidth: 400 + 30, maxWidth: .infinity, minHeight: 20, maxHeight: 20)

        .if((allEnabled || enabled) && showBorder) { view in view.border(Color(.magenta)) }
        .if((allEnabled || enabled) && !showBorder) { view in view.background(Color(.magenta).opacity(0.2)) }
    }
}

struct FrequencyLegend_Previews: PreviewProvider {
    static var previews: some View {
        FrequencyLegend()
    }
}
