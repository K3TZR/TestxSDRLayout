//
//  Bottom.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct Bottom: View {
    @ObservedObject var controller: Controller

    @State var enabled = false
    @AppStorage("ShowButtons") var showButtons = false
    @AppStorage("ShowSide") var showSide = false

    var body: some View {
        HStack {
            Image(systemName: "sidebar.left")
                .font(.system(size: 24, weight: .regular))
                .foregroundColor(showButtons ? .accentColor : .secondary)
                .onTapGesture(perform: {
                    withAnimation {
                        showButtons.toggle()
                    }
                })

            Spacer()
            Button("Bottom") { enabled.toggle() }.foregroundColor(Color(.brown))
            Spacer()
            Image(systemName: "sidebar.right")
                .font(.system(size: 24, weight: .regular))
                .foregroundColor(showSide ? .accentColor : .secondary)
                .onTapGesture(perform: {
                    withAnimation {
                        showSide.toggle()
                    }
                })

        }
        .frame(minWidth: 1010, maxWidth: .infinity, minHeight: 40, maxHeight: 40)
        .if((controller.allEnabled || enabled) && controller.showBorder) { view in view.border(Color(.brown)) }
        .if((controller.allEnabled || enabled) && !controller.showBorder) { view in view.background(Color(.brown).opacity(0.2)) }
    }
}

struct Bottom_Previews: PreviewProvider {
    static var previews: some View {
        Bottom(controller: Controller())
    }
}
