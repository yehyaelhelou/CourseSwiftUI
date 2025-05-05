//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/17/25.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {

        Image(systemName: "heart.fill")
            .font(.system(size: 50))
            .foregroundColor(Color.white)
        
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.blue, Color.purple, Color.red]),
                            startPoint: .topLeading,
                            endPoint: .bottomLeading
                        )
                    )

            .frame(width: 100 , height: 100)
            .shadow(color: .blue, radius: 10 , x : 0.0 , y: 10)
            
            .overlay(
                Circle()
                    .fill(Color.blue)
                    .frame(width: 35 , height: 35)
                    .overlay(
                    Text("5")
                        .font(.title2)
                        .foregroundColor(Color.white)
                    )
                    .shadow(color: (Color.pink), radius: 10 ,  x: 5 , y: 5)
                , alignment: .bottomTrailing
            )
            
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
