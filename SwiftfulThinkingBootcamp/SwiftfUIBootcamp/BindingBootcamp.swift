//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/31/25.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var background : Color = Color.green
    @State var title : String = "Title"
    var body: some View {
        
        ZStack{
            background.edgesIgnoringSafeArea(.all)
      
            VStack{
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $background , title: $title)
                
            }
        }
    }
    
    struct ButtonView  : View {
        @Binding var backgroundColor : Color
        @State var buttonColor : Color = Color.blue
        @Binding var title : String
        
        var body: some View{
            Button {
                backgroundColor = Color.orange
                buttonColor = Color.pink
                title = "NEW TITLE!!!!"
                
            } label: {
                Text("Button")
                    .foregroundColor(Color.white)
                    .padding()
                    .padding(.horizontal)
                    .background(buttonColor)
                    .cornerRadius(10)
            }

        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
