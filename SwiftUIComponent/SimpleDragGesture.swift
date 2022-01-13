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
        
        ZStack {
            
            VStack {
                Text("\(offset.debugDescription)")
                
                Spacer()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 300, height: 500)
                .offset(offset)
                .scaleEffect(getScaleAmount())
                .rotationEffect(Angle(degrees: getRotationAmount()))
                .gesture(dragGesture)
            
        }
    }
    
    func getScaleAmount() -> CGFloat {
        
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = abs(offset.width)
        let percentage = currentAmount / max
        
        return 1.0 - min(percentage, 0.5) * 0.5
    }
    
    func getRotationAmount() -> Double {
        
        let max = UIScreen.main.bounds.size.width / 2
        let currentAmount = offset.width
        let percentage = Double(currentAmount / max)
        
        let maxAngle: Double = 10
        
        return percentage * maxAngle
    }
    
    
}

struct SimpleDragGesture_Previews: PreviewProvider {
    static var previews: some View {
        SimpleDragGesture()
    }
}
