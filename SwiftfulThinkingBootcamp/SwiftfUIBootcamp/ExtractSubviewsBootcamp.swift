//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/31/25.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        
        
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            contentViewHstack
        }
        
    }
    
    var contentViewHstack : some View {
        HStack(spacing : 20){
            myItem(title: "Apple", count: 1, color: .green)
            myItem(title: "Tomato", count: 2, color: .red)
            myItem(title: "Panana", count: 3, color: .yellow)
            
        }
        
    }
}
struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct myItem: View {
    
    let title : String
    let count : Int
    let color : Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text("\(title)")
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
