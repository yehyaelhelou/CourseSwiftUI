//
//  ViewThatFitsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 5/2/25.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()

            ViewThatFits{
                Text("This is some text that i would like to display to user!")
                Text("This is some text that i would like to display to user!")
                Text("This is some text that i would like to display to user!")

            }
            
                .lineLimit(1)
        }
        .frame(height: 300)
        .padding(50)
        .font(.headline)
        
        
        
    }
}

struct ViewThatFitsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewThatFitsBootcamp()
    }
}
