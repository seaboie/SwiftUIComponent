//
//  ContentView.swift
//  SwiftUIComponent
//
//  Created by Kritbovorn Taweeyossak on 31/12/2564 BE.
//
//  https://www.youtube.com/watch?v=S5e1eXL8Vpk&list=PLwvDm4VfkdpiagxAXCT33Rkwnc5IVhTar&index=2

import SwiftUI

struct RandomModel: Identifiable {
    
    let id = UUID().uuidString
    let title: String
}

struct ContentView: View {
    
    @State private var selectedModel: RandomModel? = nil
    
    var body: some View {
        
        ScrollView {
            ForEach(0..<50) { index in
                Button("Button \(index)") {
                    selectedModel = RandomModel(title: "\(index)")
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .center)
            }
        }
        .sheet(item: $selectedModel, onDismiss: nil) { identifiable in
            NextScreen(selectedModel: identifiable)
        }
        
    }
}

struct NextScreen: View {
    
    let selectedModel: RandomModel
    
    var body: some View {
        Text(selectedModel.title)
            .font(.largeTitle)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
