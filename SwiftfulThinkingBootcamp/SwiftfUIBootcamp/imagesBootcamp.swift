//
//  imagesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/15/25.
//

import SwiftUI

struct imagesBootcamp: View {
    var body: some View {
       Image("helou")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .scaledToFit()
            .frame(width: 300, height:300)
            .foregroundColor(.green)
            .cornerRadius(150)
//            .clipShape(
//            Circle()
//                RoundedRectangle(cornerRadius: 25.0)
//                Ellipse()
//                Circle()
                
//            )
        
        
    }
}

struct imagesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        imagesBootcamp()
    }
}
