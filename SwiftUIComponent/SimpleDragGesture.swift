//
//  SimpleDragGesture.swift
//  SwiftUIComponent
//
//  Created by Kritbovorn Taweeyossak on 13/1/2565 BE.
//

import SwiftUI

struct SimpleDragGesture: View {
    
    @State private var offset: CGSize = CGSize.zero
    
    var dragGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                withAnimation(.spring()) {
                    offset = value.translation
                }
            }
            .onEnded { value in
                withAnimation(.spring()) {
                    offset = CGSize.zero
                }
            }
    }
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
            .offset(offset)
            .gesture(dragGesture)
    }
}

struct SimpleDragGesture_Previews: PreviewProvider {
    static var previews: some View {
        SimpleDragGesture()
    }
}
