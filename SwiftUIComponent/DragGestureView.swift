//
//  DragGestureView.swift
//  SwiftUIComponent
//
//  Created by Kritbovorn Taweeyossak on 13/1/2565 BE.
//

import SwiftUI

struct DragGestureView: View {
    var body: some View {
        
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            MySignUpView()
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
        VStack(spacing: 24.0) {
            Image(systemName: "chevron.up")
                .font(.largeTitle)
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
