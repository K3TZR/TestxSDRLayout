//
//  Panafall.swift
//  TestxSDRLayout
//
//  Created by Douglas Adams on 5/19/21.
//

import SwiftUI

struct Panafalls: View {

    @AppStorage("ShowSide") var showSide = false
    @AppStorage("numberOfPanadapters") var numberOfPanadapters = 1

    var body: some View {
        ForEach((0...numberOfPanadapters), id: \.self) { _ in
            Panafall()
        }
    }
}

struct Panafalls_Previews: PreviewProvider {
    static var previews: some View {
        Panafalls()
    }
}
