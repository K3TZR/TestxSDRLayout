//
//  Bottom.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct Bottom: View {

    @AppStorage("showBorder") var showBorder = false
    @AppStorage("allEnabled") var allEnabled = false

    @State var enabled = false

    var body: some View {
        HStack {
            Spacer()
            Button("Bottom") { enabled.toggle() }.foregroundColor(Color(.brown))
            Spacer()
        }
        .frame(minWidth: 1010, maxWidth: .infinity, minHeight: 40, maxHeight: 40)
        .if((allEnabled || enabled) && showBorder) { view in view.border(Color(.brown)) }
        .if((allEnabled || enabled) && !showBorder) { view in view.background(Color(.brown).opacity(0.2)) }
    }
}

struct Bottom_Previews: PreviewProvider {
    static var previews: some View {
        Bottom()
    }
}
