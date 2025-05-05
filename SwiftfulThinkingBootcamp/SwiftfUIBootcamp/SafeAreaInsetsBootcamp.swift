//
//  SafeAreaInsetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/30/25.
//

import SwiftUI

struct SafeAreaInsetsBootcamp: View {
    var body: some View {
        
        NavigationStack{
            List(0..<10){ _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
            
            //            .overlay(
            //                Text("Hi")
            //                    .frame(maxWidth: .infinity)
            //                    .background(Color.yellow)
            //
            //                ,alignment: .bottom
            //            )
            .safeAreaInset(edge: .top ,alignment: .trailing , spacing: nil ){
                                Text("Hi")
                                    .frame(maxWidth: .infinity)
                                    .background(Color.yellow)
//                                    .clipShape(Circle())
//                                    .padding()
            }
        }
    }
}

struct SafeAreaInsetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetsBootcamp()
    }
}
