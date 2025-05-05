//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/27/25.
//

import SwiftUI

struct GridBootcamp: View {
    
    
    let colmuns : [GridItem] = [
        GridItem(.fixed(50) , spacing: nil , alignment: nil )
    ]
    
    var body: some View {
        LazyVGrid(columns: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Columns@*/[GridItem(.fixed(200))]/*@END_MENU_TOKEN@*/) {

            ForEach(0..<50) { index in
                Rectangle()
                    .frame(height: 50)
                
            }
            
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
