//
//  ContentView.swift
//  SwiftUIComponent
//
//  Created by Kritbovorn Taweeyossak on 31/12/2564 BE.
//
//  https://www.youtube.com/watch?v=S5e1eXL8Vpk&list=PLwvDm4VfkdpiagxAXCT33Rkwnc5IVhTar&index=2

import SwiftUI

struct ContentView: View {
    
    @State private var textFieldText: String = ""
    @State private var scrollToIndex: Int = 0
    
    var body: some View {
        
        VStack {
            
            TextField("Enter a number here...", text: $textFieldText)
                .padding(.horizontal)
                .frame(height: 55)
                .border(Color.gray)
                .padding(.horizontal)
                .keyboardType(UIKit.UIKeyboardType.numberPad)
            
            Button {
                    
                    if let index = Int(textFieldText) {
                        scrollToIndex = index
                    }
        
            } label: {
                Text("Scroll now!!!")
            }
            
            ScrollView {
                ScrollViewReader { proxy in

                    ForEach(0..<50) { index in
                        Text("This is item # \(index)")
                            .font(.headline)
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .background(Color.white.cornerRadius(12))
                            .shadow(radius: 10)
                            .padding()
                            .id(index)
                    }
                    .onChange(of: scrollToIndex) { newValue in
                        withAnimation(.spring()) {
                            proxy.scrollTo(newValue, anchor: .top)
                        }
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
