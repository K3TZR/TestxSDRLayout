//
//  Panafall.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct Panafall: View {

    var body: some View {
        VStack(spacing: 0) {
            Panadapter()
            Waterfall()
        }
        .frame(minWidth: 800, maxWidth: .infinity, minHeight: 820, maxHeight: .infinity)
    }
}

struct Panafall_Previews: PreviewProvider {
    static var previews: some View {
        Panafall()
    }
}
