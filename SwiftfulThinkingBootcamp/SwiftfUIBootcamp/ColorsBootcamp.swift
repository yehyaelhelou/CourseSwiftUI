//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/15/25.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(Color("CustomColor"))
        //                Color.primary
        //                Color(uiColor: .green)
        
            .frame(width: 300 , height: 100)
            .shadow(radius: 10)
            .shadow(color : Color("CustomColor"), radius: 10 , x: 0.0 , y: 0.0)
        
    }
    
    struct ColorsBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            ColorsBootcamp()
        }
    }
}
