//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/13/25.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 50)
            .fill(Color.green)
            .foregroundColor(.pink)
//            .stroke()
//            .stroke(Color.green)
//            .stroke(Color.blue , lineWidth: 5)
//            .stroke(Color.orange , style: StrokeStyle(lineWidth: 5 , lineCap: .round , dash: [10]))
        
//            .trim(from: 0.2, to : 1.0)
//            .stroke(Color.green , lineWidth: 5)
        
            .frame(width: 200 , height: 200)
        
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
