//
//  ButtonsStylesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/26/25.
//

import SwiftUI

struct ButtonsStylesBootcamp: View {
    var body: some View {
        VStack{
            
    
            
            Button{
                
            } label: {
                Text("Button Title ")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.large)
            
            
            
            Button("Button Title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            ButtonStyle(.borderedProminent)
            .controlSize(.large)
            .buttonStyle(.plain)
            
            Button("Button Title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            ButtonStyle(.borderedProminent)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)

            
            Button("Button Title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            ButtonStyle(.borderedProminent)
            .buttonStyle(.bordered)
            .controlSize(.large)
            
            Button("Button Title"){
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            ButtonStyle(.borderedProminent)
            .buttonStyle(.plain)
            .controlSize(.large)
        }
        .padding()
    }
}

struct ButtonsStylesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsStylesBootcamp()
    }
}
