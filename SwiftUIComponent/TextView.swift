//
//  TextView.swift
//  SwiftUIComponent
//
//  Created by Kritbovorn Taweeyossak on 31/12/2564 BE.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        
        VStack(spacing: 12) {
            
            Text("Under Line")
                .underline(true, color: Color.accentColor)
            
            Text("Font")
                .font(Font.system(size: 24, weight: Font.Weight.bold, design: Font.Design.serif))
            
            Text("Italic")
                .italic()
            
            Text("Kerning")
                .kerning(18)
            
            Text("Strike Through")
                .strikethrough(true, color: Color.black)
            
            Text("My name is Kritbovorn Taweeyossak, Greet to see this course, I am really enjoying this course and learning a lot.")
                .multilineTextAlignment(TextAlignment.center)
            
            Text("LOWER CASE".lowercased())
            
            Text("upper case".uppercased())
            
            Text("captal lized".capitalized)
            
            Text("My name is Kritbovorn Taweeyossak, Greet to see this course, I am really enjoying this course and learning a lot. And a lot of letters so good . Goolgle")
                .padding()
                .frame(width: 150, height: 50, alignment: Alignment.center)
                .minimumScaleFactor(0.1)
                
            
        }
        
        
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
