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
        GeometryReader { geo in
            HStack {
                Spacer()
                Button("DbmLines (\(Int(geo.size.height)) x \(Int(geo.size.width)))") { enabled.toggle() }.foregroundColor(Color(.textColor))
                Spacer()
            }
        }
        .frame(minWidth: 600, maxWidth: .infinity, minHeight: 200, maxHeight: .infinity)
        .if((allEnabled || enabled) && showBorder) { view in view.border(Color(.textColor)) }
        .if((allEnabled || enabled) && !showBorder) { view in view.background(Color(.textColor).opacity(0.2)) }
    }
}

struct DbLines_Previews: PreviewProvider {
    static var previews: some View {
        DbmLines()
    }
}
