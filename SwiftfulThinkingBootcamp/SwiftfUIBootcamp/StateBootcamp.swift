//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/29/25.
//

import SwiftUI


struct StateBootcamp: View {
    
    @State var backgroundColor: Color  = Color.green
    
    var body: some View {
        ZStack{
            //            background
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            //content
            VStack(spacing : 20){
                Text("Title")
                    .font(.title)
                Text("Count : 1 ")
                    .font(.headline)
                    .underline()
                
                HStack(spacing : 20){
                    Button("Button 1") {
                        backgroundColor = .red
                    }
                    
                    Button("Button 2"){
                        backgroundColor = .purple
                        
                    }
                }
                .foregroundColor(Color.white)
                
                
                
            }
        }
    }
    
    struct StateBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            StateBootcamp()
        }
    }
}
