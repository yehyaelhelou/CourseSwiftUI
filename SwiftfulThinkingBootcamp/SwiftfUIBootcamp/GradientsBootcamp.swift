//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/15/25.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25.0)
                        
            //
            //            RoundedRectangle(cornerRadius: 25.0)
            //                .fill(
            //                    LinearGradient(gradient: Gradient(colors: [Color.purple, Color.white, Color.green, Color.orange]),
            //                                   startPoint: .trailing,
            //                                   endPoint: .bottom)
            //                )
            //                .frame(width: 300, height: 200)
            
            
                .fill(
//                    RadialGradient(gradient: Gradient(colors: [Color.blue, Color.black, Color.red]),
//                                   center: .topTrailing,
//                                   startRadius: 5,
//                                   endRadius: 400)
                
                    
                    AngularGradient(gradient: Gradient(colors: [Color.blue, Color.black , Color.red]), center: .topLeading , angle: .degrees(180 + 45 ))
                    
                )
            
            
    
            
                .frame(width: 300, height: 200)

        }
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
