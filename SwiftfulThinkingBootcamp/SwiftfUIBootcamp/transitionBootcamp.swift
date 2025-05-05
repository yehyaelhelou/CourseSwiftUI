//
//  transition.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/2/25.
//

import SwiftUI

struct transition: View {
    
    @State var showView : Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
                    
            VStack{
                Button("Button") {
                    showView.toggle()
                    
                }
                Spacer()
            }
            
            
            if showView{
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(showView ? 1.0 : 0.0)
                    .transition(.asymmetric(insertion:
                            .move(edge: .bottom
                                 ), removal: .move(edge: .top)))
                    .animation(.easeInOut, value: Edge(rawValue: 1))


            }
    
            }

    }
}

struct transition_Previews: PreviewProvider {
    static var previews: some View {
        transition()
    }
}
