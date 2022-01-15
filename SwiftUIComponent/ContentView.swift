//
//  ContentView.swift
//  SwiftUIComponent
//
//  Created by Kritbovorn Taweeyossak on 31/12/2564 BE.
//
//  https://www.youtube.com/watch?v=S5e1eXL8Vpk&list=PLwvDm4VfkdpiagxAXCT33Rkwnc5IVhTar&index=2

import SwiftUI

struct ContentView: View {
    
    @State private var rating: Int = 0
    
    var body: some View {
        starView
            .overlay(
                overlayView
                    .mask(starView)
            )
    }
    
    private var overlayView: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(Color(.systemYellow))
                    .frame(width: CGFloat(rating) / 5 * geometry.size.width)
            }
        }
        .allowsHitTesting(false)
    }
    
    private var starView: some View {
        HStack {
            
            ForEach(1..<6) { index in
                Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .foregroundColor(Color(.systemGray))
                    .onTapGesture {
                        withAnimation(.spring()) {
                            rating = index
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
