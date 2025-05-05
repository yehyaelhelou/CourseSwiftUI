//
//  backgroundMaterialBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/26/25.
//

import SwiftUI

struct backgroundMaterialBootcamp: View {
    var body: some View {
        VStack{
            Spacer()
            
            VStack{
            RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50 , height: 4)
                Spacer()
                
            }
            .frame(height: 250)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(Image("yehya.1"))
    }
}

struct backgroundMaterialBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        backgroundMaterialBootcamp()
    }
}
