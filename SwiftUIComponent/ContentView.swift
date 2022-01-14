//
//  ContentView.swift
//  SwiftUIComponent
//
//  Created by Kritbovorn Taweeyossak on 31/12/2564 BE.
//
//  https://www.youtube.com/watch?v=S5e1eXL8Vpk&list=PLwvDm4VfkdpiagxAXCT33Rkwnc5IVhTar&index=2

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollView(Axis.Set.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<20) { index in
                    
                    GeometryReader { geometry in
                        
                        RoundedRectangle(cornerRadius: 20)
                            .rotation3DEffect(Angle(degrees: getPercentage(geo: geometry) * 40), axis: (x: 0, y: 1, z: 0))
                        
                    }
                    .frame(width: 300, height: 250)
                }
                .padding()
            }
        }
        
    }
    
    func getPercentage(geo: GeometryProxy) -> Double {
        
        let maxDistance = UIScreen.main.bounds.size.width / 2
        print("### MaxDistance = \(maxDistance)")
        let currentX = geo.frame(in: .global).midX
        print("@@@ Current X: = \(currentX)")
        return Double(1 - (currentX / maxDistance))
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
