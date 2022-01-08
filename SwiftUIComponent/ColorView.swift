//
//  ColorView.swift
//  SwiftUIComponent
//
//  Created by Kritbovorn Taweeyossak on 31/12/2564 BE.
//

import SwiftUI

struct ColorView: View {
    var body: some View {
        
        ScrollView {
            VStack {
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("CustomColor"))
                    .shadow(color: Color("CustomColor").opacity(0.3), radius: 5, x: 20, y: 20)
                    .frame(width: 300, height: 200)
                    
            }
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
        
        ColorView()
            .preferredColorScheme(.dark)
    }
}
