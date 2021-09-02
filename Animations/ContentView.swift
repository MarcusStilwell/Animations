//
//  ContentView.swift
//  Animations
//
//  Created by Marcus Stilwell on 9/1/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount: CGFloat = 1
    
    
    var body: some View {
        Button("Tap Me") {
            self.animationAmount += 1
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .animation(.easeOut)
        .blur(radius: (animationAmount - 1) * 3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
