//
//  ContentView.swift
//  HowToCreateFloatingButtonWithAnimation
//
//  Created by ramil on 05.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var change: Bool = true
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    Text("Floating button")
                }
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {
                            self.change.toggle()
                        }) {
                            Image(systemName: self.change ? "plus" : "xmark")
                        }.padding()
                        .foregroundColor(.white)
                        .background(Color.blue.opacity(0.8))
                        .clipShape(Circle())
                        .shadow(radius: 15)
                        .padding()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
