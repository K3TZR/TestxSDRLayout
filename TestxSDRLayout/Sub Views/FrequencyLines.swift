//
//  FrequencyLines.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct FrequencyLines: View {

    @AppStorage("showBorder") var showBorder = false
    @AppStorage("allEnabled") var allEnabled = false

    @State var enabled = false
    
    var body: some View {
        HStack {
            Button("FrequencyLines ---->") { enabled.toggle() }.foregroundColor(Color(.yellow))
            Spacer()
        }
        .frame(minWidth: 800, maxWidth: .infinity, minHeight: 400, maxHeight: .infinity)
        .if((allEnabled || enabled) && showBorder) { view in view.border(Color(.yellow)) }
        .if((allEnabled || enabled) && !showBorder) { view in view.background(Color(.yellow).opacity(0.2)) }
    }
}

struct FrequencyLines_Previews: PreviewProvider {
    static var previews: some View {
        FrequencyLines()
    }
}
