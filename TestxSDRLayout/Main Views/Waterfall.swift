//
//  Waterfall.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct Waterfall: View {
    @ObservedObject var controller: Controller

    var body: some View {
        (
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    WaterfallGraphic(controller: controller)
                    WaterfallLegend(controller: controller)
                }
            }
        )
        .frame(minWidth: 800, maxWidth: .infinity, minHeight: 400, maxHeight: .infinity)
    }
}

struct Waterfall_Previews: PreviewProvider {
    static var previews: some View {
        Waterfall(controller: Controller())
    }
}
