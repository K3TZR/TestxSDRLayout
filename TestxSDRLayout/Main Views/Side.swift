//
//  Side.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct Side: View {
    @ObservedObject var controller: Controller

    @State var enabled = false

    var body: some View {
        VStack {
            Button("Side") { enabled.toggle() }.foregroundColor(Color(.red))
        }
        .frame(minWidth: 120, maxWidth: 120, minHeight: 820, maxHeight: .infinity)
        .if((controller.allEnabled || enabled) && controller.showBorder) { view in view.border(Color(.red)) }
        .if((controller.allEnabled || enabled) && !controller.showBorder) { view in view.background(Color(.red).opacity(0.2)) }
    }
}

struct Side_Previews: PreviewProvider {
    static var previews: some View {
        Side(controller: Controller())
    }
}

extension View {
    /// Applies the given transform if the given condition evaluates to `true`.
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - transform: The transform to apply to the source `View`.
    /// - Returns: Either the original `View` or the modified `View` if the condition is `true`.
    @ViewBuilder func `if`<Content: View>(_ condition: @autoclosure () -> Bool, transform: (Self) -> Content) -> some View {
        if condition() {
            transform(self)
        } else {
            self
        }
    }
}
