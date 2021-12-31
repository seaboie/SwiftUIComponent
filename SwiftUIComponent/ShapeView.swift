//
//  ShapeView.swift
//  SwiftUIComponent
//
//  Created by Kritbovorn Taweeyossak on 31/12/2564 BE.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
        
        VStack(spacing: 20) {
            
            Circle()
                .fill(Color.blue)
            Circle()
                .stroke(Color.blue)
            Circle()
                .stroke(Color.blue, lineWidth: 10)
            Circle()
                .stroke(Color.orange, style: StrokeStyle(lineWidth: 10, lineCap: .butt, lineJoin: .miter, dash: [10]))
            
            Ellipse()
            
            Rectangle()
            
            RoundedRectangle(cornerRadius: 10)
            Capsule()

        }
        .padding()
    }
}

struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
