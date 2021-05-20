//
//  DbLines.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct DbmLines: View {
    @ObservedObject var controller: Controller

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
        .if((controller.allEnabled || enabled) && controller.showBorder) { view in view.border(Color(.textColor)) }
        .if((controller.allEnabled || enabled) && !controller.showBorder) { view in view.background(Color(.textColor).opacity(0.2)) }
    }
}

struct DbLines_Previews: PreviewProvider {
    static var previews: some View {
        DbmLines(controller: Controller())
    }
}
