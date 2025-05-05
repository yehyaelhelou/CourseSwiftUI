//
//  AnimatationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/1/25.
//

import SwiftUI

struct AnimatationTimingBootcamp: View {
    
    @State var isAnimating : Bool = false
    let timing : Double = 10.0
    
    var body: some View {
        
        VStack{
            Button("Button"){
                isAnimating.toggle()
            }
        
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 20 , height: 100)
            
    
                .animation(.spring(response: 1.0 ,
                                   dampingFraction: 0.2 ,
                                   blendDuration: 1.0
                                  ))
            
            //                .animation(.spring())
            //                .animation(Animation.linear(duration: timing))
  
            
            
            
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 20 , height: 100)
//                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 20 , height: 100)
//                .animation(Animation.easeOut(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 20 , height: 100)
//                .animation(Animation.easeOut(duration: timing))
            
                
        }
         
        
    }
}

struct AnimatationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimatationTimingBootcamp()
    }
}
