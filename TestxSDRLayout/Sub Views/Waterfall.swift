//
//  Waterfall.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct Waterfall: View {

    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                WaterfallGraphic()
                WaterfallLegend()
            }
        }
        .frame(minWidth: 800, maxWidth: .infinity, minHeight: 400, maxHeight: .infinity)
    }
}

struct Waterfall_Previews: PreviewProvider {
    static var previews: some View {
        Waterfall()
    }
}