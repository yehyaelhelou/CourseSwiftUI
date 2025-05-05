//
//  ConditionalBootacmp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/31/25.
//

import SwiftUI

struct ConditionalBootacmp: View {
    @State var showCircle  : Bool  = false
    @State var showRectangel : Bool = false
    @State var isLoading : Bool = false
    
    var body: some View {
        
        VStack(spacing : 20){
  
            Button("is Loading") {
                isLoading.toggle()
            }
            
            if isLoading{
                ProgressView()
            }
            
//            Button("Circle Button \(showCircle.description)") {
//                showCircle.toggle()
//            }
//
//            Button("Rectangel Button \(showRectangel.description): ") {
//                showRectangel.toggle()
//            }
//
//            if showCircle{
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if showRectangel {
//                Rectangle()
//                    .frame(width: 100 , height: 100)
//            }
//
//            if showCircle || showRectangel {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 200 , height: 200)
//            }
            
            Spacer()
        }
    }
}

struct ConditionalBootacmp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootacmp()
    }
}
