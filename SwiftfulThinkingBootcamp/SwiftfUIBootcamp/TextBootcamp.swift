 //
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/13/25.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!".capitalized)
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(true , color: Color.red)
//            .italic()
//            .strikethrough(true , color: Color.green)
        
            .font(.system(size: 24 , weight: .semibold , design: .serif))
//            .baselineOffset(10)
            .kerning(1)
            .multilineTextAlignment(.center)
            .foregroundColor(.green)
            .frame(width: 300 , height: 400 , alignment: .center)
            .minimumScaleFactor(0.1)
        
        
        
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
