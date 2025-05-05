//
//  PaddingAndSpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/22/25.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Hello, World!")
   
            
                .font(.largeTitle)
            .fontWeight(.semibold)
            
            Text("This is the description of what we will do on this screen  ,Is is mutliple lines and we will align the text to leading edge.")
                .padding(.bottom , 20)
        }
        .padding()
        .padding(.vertical , 10)
        
        .background(
            
            Color.white
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.3), radius: 10 , x: 0.0 , y: 5)

        )
        .padding(.horizontal , 10)
        

        
        //            .background(Color.yellow)
        //            .padding(.vertical , 20)
        //            .background(Color.blue)
        
        
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
