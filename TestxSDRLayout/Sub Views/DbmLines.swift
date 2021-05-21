//
//  DbLines.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct DbmLines: View {

    @AppStorage("showBorder") var showBorder = false
    @AppStorage("allEnabled") var allEnabled = false

    @State var enabled = false
    
    var body: some View {
        VStack {
            Button("DbmLines") { enabled.toggle() }.foregroundColor(Color(.textColor))
            Text("|")
            Text("|")
            Text("|")
            Text("|")
           Spacer()
        }
        .frame(minWidth: 800, maxWidth: .infinity, minHeight: 400, maxHeight: .infinity)
        .if((allEnabled || enabled) && showBorder) { view in view.border(Color(.textColor)) }
        .if((allEnabled || enabled) && !showBorder) { view in view.background(Color(.textColor).opacity(0.2)) }
    }
}

struct DbLines_Previews: PreviewProvider {
    static var previews: some View {
        DbmLines()
    }
}
