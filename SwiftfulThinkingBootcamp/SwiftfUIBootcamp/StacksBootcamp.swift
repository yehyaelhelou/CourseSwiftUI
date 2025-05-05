//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/18/25.
//

import SwiftUI

struct StacksBootcamp: View {
    // Vstacks -> Vertical
    // Hstacks -> Horizntal
    // Zstacks -> xIndex (back to front)
    
    var body: some View {
        
        VStack(spacing: 50){
            
            ZStack{
                Circle()
                    .frame(width: 100 , height: 100)
                
                Text("5")
                    .font(.title2)
                    .foregroundColor(.white)
                
            }
            
            Text("1")
                .foregroundColor(.white)
                .font(.title2)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                    
                )
            
            
            
        }
        
        
    }
}
struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
