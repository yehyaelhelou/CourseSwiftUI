//
//  OnTapGesture.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/16/25.
//

import SwiftUI

struct OnTapGesture: View {
    
    
    @State var isSelected: Bool = false
    
    var body: some View {
        
        VStack(spacing:20){
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.yellow)
            
                Button(action: {
                    isSelected.toggle()
                }, label: {
                    Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
                     
                })
            
            Text("TAP Gesture")
            .font(.headline)
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(25)
//            .onTapGesture {
//                isSelected.toggle()
//            }
            
            .onTapGesture(count: 2, perform: {
                isSelected.toggle()
            })
            
            
            Spacer()

        }
        .padding()
     
        
    }
}

struct OnTapGesture_Previews: PreviewProvider {
    static var previews: some View {
        OnTapGesture()
    }
}
