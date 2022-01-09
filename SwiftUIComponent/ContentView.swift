//
//  ContentView.swift
//  SwiftUIComponent
//
//  Created by Kritbovorn Taweeyossak on 31/12/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentAmount: CGFloat = 0
    @State private var lastAmount: CGFloat = 0
    
    var photoImageGesture: some Gesture {
        MagnificationGesture()
            .onChanged { value in
                currentAmount = value - 1
            }
            .onEnded { value in
                withAnimation(.spring()) {
                    currentAmount = 0
                }
            }
    }
    
    var body: some View {
        
        VStack(spacing: 10.0) {
            
            HStack {
                Circle()
                    .frame(width: 35, height: 35)
                Text("Swiftful Thinking")
                
                Spacer()
                
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            .padding(.top)
            
            Image("image1")
                .resizable()
                .frame(maxWidth: .infinity, maxHeight: 300)
                .scaleEffect(1 + currentAmount)
                .gesture(photoImageGesture)
            
            HStack {
                Image(systemName: "heart.fill")
                
                Image(systemName: "text.bubble.fill")
                
                Spacer()
            }
            .padding(.horizontal)
            .font(.headline)
            
            Text("This is my photo")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .padding(.bottom)
        }
        .background(Material.regularMaterial)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
