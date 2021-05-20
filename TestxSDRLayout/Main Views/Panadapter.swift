//
//  PanadapterView.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct Panadapter: View {
    @ObservedObject var controller: Controller

    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                ZStack {
                    FrequencyLines(controller: controller)
                    DbmLines(controller: controller)
                    PanadapterGraphic(controller: controller)
                }
                DbLegend(controller: controller)
            }
            FrequencyLegend(controller: controller)
        }
        .frame(minWidth: 800, maxWidth: .infinity, minHeight: 400 + 20, maxHeight: .infinity)
    }
}

struct PanadapterView_Previews: PreviewProvider {
    static var previews: some View {
        Panadapter(controller: Controller())
    }
}
