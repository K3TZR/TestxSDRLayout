//
//  PanadapterView.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct Panadapter: View {

    var body: some View {
//        GeometryReader { geo in

            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    ZStack {
                        FrequencyLines()
                        DbmLines()
//                        PanadapterGraphic(height: geo.size.height, width: geo.size.width)
                        PanadapterGraphic()
                    }
                    DbLegend()
                }
                FrequencyLegend()
            }
            .frame(minWidth: 600, maxWidth: .infinity, minHeight: 200 + 20, maxHeight: .infinity)
//        }

    }
}

struct PanadapterView_Previews: PreviewProvider {
    static var previews: some View {
        Panadapter()
    }
}
