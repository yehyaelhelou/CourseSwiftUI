//
//  iconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/15/25.
//

import SwiftUI

struct iconsBootcamp: View {
    var body: some View {
            Image(systemName: "person.fill.badge.plus")
//            .resizable()
            .renderingMode(.original)
            .font(.largeTitle)
//            .font(.system(size:100))
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
//            .scaledToFill()
        
            .foregroundColor(.red)
//            .frame(width: 300 , height: 300)
//            .clipped()   // used with scaledtoFill
        
        
    }
}

struct iconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        iconsBootcamp()
    }
}
