//
//  ContentView.swift
//  SwiftUIComponent
//
//  Created by Kritbovorn Taweeyossak on 31/12/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var angle: Angle = Angle(degrees: 0.0)
    
    var rotateGesture: some Gesture {
        RotationGesture()
            .onChanged { angleValue in
                angle = angleValue
            }
            .onEnded { angleValue in
                withAnimation(.spring()) {
                    angle = Angle(degrees: 0.0)
                }
            }
    }
    
    var body: some View {
        Text("Hello, world!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(Color(.systemBackground))
            .padding(30)
            .background(Color(.systemBlue))
            .cornerRadius(12)
            .rotationEffect(angle)
            .gesture(rotateGesture)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
