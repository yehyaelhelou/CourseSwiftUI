//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/1/25.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated : Bool = false

    
    var body: some View {
        VStack{
            Button("Button"){
                isAnimated.toggle()
            }
            
            Spacer()
            RoundedRectangle(cornerRadius: 25.0)
            .fill(isAnimated ?  Color.pink : Color.green)
            .frame(width: isAnimated ? 100 : 300,
                   height: isAnimated ? 100 : 300 )
            
            .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
            .offset(y: isAnimated ? 300 : 0)
            .animation(Animation
                .default
                .repeatForever(autoreverses: false)
            )
            
            Spacer()
    }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
