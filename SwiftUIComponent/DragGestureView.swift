//
//  DragGestureView.swift
//  SwiftUIComponent
//
//  Created by Kritbovorn Taweeyossak on 13/1/2565 BE.
//

import SwiftUI

struct DragGestureView: View {
    
    @State private var startingOffsetY: CGFloat = UIScreen.main.bounds.size.height * 0.85
    @State private var currentOffsetY: CGFloat = 0.0
    @State private var endingOffsetY: CGFloat = 0.0
    
    var dragGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                withAnimation(.spring()) {
                    currentOffsetY = value.translation.height
                }
            }
            .onEnded { value in
                
                withAnimation(.spring()) {
                    if currentOffsetY < -150 {
                        endingOffsetY = -startingOffsetY
                    } else if endingOffsetY != 0 && currentOffsetY > 150 {
                        endingOffsetY = 0
                    }
                    
                    currentOffsetY = 0
                    
                }
                
            }
        
    }
    
    var body: some View {
        
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            MySignUpView()
                .offset(y: startingOffsetY + currentOffsetY + endingOffsetY)
                .gesture(dragGesture)
            
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct DragGestureView_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureView()
    }
}

struct MySignUpView: View {
    var body: some View {
        VStack(spacing: 20.0) {
            Image(systemName: "chevron.up")
                .font(.headline)
                .padding(.top)
            
            Text("Sign Up")
                .font(.headline)
                .fontWeight(.semibold)
            
            Image(systemName: "flame.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            Text("This is the Description for our App. This is my favorite SwiftUIs Course and I recommend to all of my friends to subscribed to Swiftful Thinking.!!!")
                .multilineTextAlignment(.center)
            
            Text("CREATE AN ACCOUNT")
                .foregroundColor(Color.white)
                .font(.headline)
                .padding()
                .padding(.horizontal)
                .background(Color.black.cornerRadius(12))
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color.white.cornerRadius(24))
    }
}
