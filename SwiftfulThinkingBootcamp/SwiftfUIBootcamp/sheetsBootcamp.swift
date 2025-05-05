//
//  sheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/2/25.
//

import SwiftUI

struct sheetsBootcamp: View {
    
    @State var showSheet : Bool = false
    
    var body: some View {
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("BUTTON")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10)
            )}
                
            
            .fullScreenCover(isPresented: $showSheet, content: {
                     SecondScren()
            })
            
//            .sheet(isPresented: $showSheet) {
//                SecondScren()
//            }
            
        }
            
    }
    
}
    
struct SecondScren  : View {
    
    @Environment(\.presentationMode) var presntationMode
    
    
    var body: some View {
        
        ZStack(alignment : .topLeading){
            Color.red.edgesIgnoringSafeArea(.all)
            
            Button (action: {
                presntationMode.wrappedValue.dismiss()
                
            }, label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .padding(20)
                
            })
            
        }
        
    }
}

struct sheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        sheetsBootcamp()
//        SecondScren()
    }
}
