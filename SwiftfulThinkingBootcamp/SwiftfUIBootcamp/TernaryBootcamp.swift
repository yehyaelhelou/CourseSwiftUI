//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/31/25.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState : Bool = false

    var body: some View {
        
        VStack{
            
                Button("Button: \(isStartingState.description)"){
                isStartingState.toggle()
            
                
            }
            
            Text(isStartingState ? "STARTING STATE!!" : "ENDING STATE!!") //show text on Button
                
                
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState == true  ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200: 50
                    , height: isStartingState ? 400: 50 )
            Spacer()
            
        }
        }
        
    }

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
