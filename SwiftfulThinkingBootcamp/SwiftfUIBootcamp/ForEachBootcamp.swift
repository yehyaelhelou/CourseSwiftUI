//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/27/25.
//

import SwiftUI

struct ForEachBootcamp: View {
    var body: some View {
        
        let data : [String] = ["Hi", "Hello" , "Hey everyone"]
        let myString: String = "Hello"
        VStack{
//            ForEach(0..<10) { index in
//                HStack{
//                    Circle()
//                        .frame(width: 30 , height: 30)
//                        Text("Index is : \(index)")
                              
            ForEach(data.indices) { index in
                Text("\(data[2]): \(index)")
                
            }
            
                }
        
            }
        }

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
    
