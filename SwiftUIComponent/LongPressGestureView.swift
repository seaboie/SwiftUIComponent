//
//  LongPressGestureView.swift
//  SwiftUIComponent
//
//  Created by Kritbovorn Taweeyossak on 8/1/2565 BE.
//

import SwiftUI

struct LongPressGestureView: View {
    
    @State private var isCompleted: Bool = false
    @State private var isSuccess: Bool = false
    
    var body: some View {
        
        VStack {
            Rectangle()
                .fill(isSuccess ? Color(.systemYellow) : Color(.systemBlue))
                .frame(height: 50)
                .frame(maxWidth: isCompleted ? .infinity : 0)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(.systemGray))
            
            HStack {
                
                Text("CLICK HERE")
                    .foregroundColor(Color(.systemBackground))
                    .padding()
                    .background(Color.primary)
                    .cornerRadius(12)
                    .onLongPressGesture(minimumDuration: 2, maximumDistance: 50) {
                        withAnimation(.easeInOut(duration: 2)) {

                            isCompleted = true
                            isSuccess = true
                            
                        }
                    } onPressingChanged: { isPressing in
                        if isPressing {
                            withAnimation(.easeInOut(duration: 2)) {
                                isCompleted = true
                            }
                        } else {
                            
                                withAnimation(.easeInOut(duration: 2)) {
                                    isCompleted = false
                                }
                            
                        }
                    }

                Text("RESET")
                    .foregroundColor(Color(.systemBackground))
                    .padding()
                    .background(Color.primary)
                    .cornerRadius(12)
                    .onTapGesture {
                        isCompleted = false
                        isSuccess = false
                    }
            }
            
        }
    }
}

struct LongPressGestureView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) {
            LongPressGestureView()
                .preferredColorScheme($0)
        }
    }
}
