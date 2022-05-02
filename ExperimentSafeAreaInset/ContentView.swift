//
//  ContentView.swift
//  ExperimentSafeAreaInset
//
//  Created by Maris Lagzdins on 02/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(1..<30) { number in
                Text("Row \(number)")
            }
            .listRowBackground(Color.indigo)
        }
        .safeAreaInset(edge: .bottom) {
            VStack {
                Button("Press me") {
                    // do nothing
                }
                .buttonStyle(.borderedProminent)
            }
            .frame(maxWidth: .infinity)
            .padding(.top)
            .background(.bar)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .light)

        ContentView()
            .environment(\.colorScheme, .dark)

        ContentView()
            .environment(\.colorScheme, .dark)
            .previewInterfaceOrientation(.landscapeRight)
    }
}
