//
//  ContentView.swift
//  Animations
//
//  Created by Marcus Benoit on 27.03.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Tap me!") {
            // do nothing
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(.circle)
    }
}

#Preview {
    ContentView()
}
