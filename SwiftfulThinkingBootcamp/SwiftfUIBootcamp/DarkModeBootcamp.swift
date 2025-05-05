//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/10/25.
//

import SwiftUI

struct DarkModeBootcamp: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        NavigationView{
            ScrollView{
                VStack(spacing:20){
                    Text("This color is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This color is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This color is Black")
                        .foregroundColor(.black)
                    Text("This color is white")
                        .foregroundColor(.white)
                        .foregroundColor(.secondary)
                    Text("This color is RED")
                        .foregroundColor(.red)
                    Text("This color is globally adaptive!")
                        .foregroundColor(Color("apdaptiveColor"))
                    Text("This colro is locally adaptive!")
                        .foregroundColor(colorScheme == .light ? .green: .yellow)
                }

            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        
        Group{
            DarkModeBootcamp()
                .preferredColorScheme(.dark)
            DarkModeBootcamp()
                .preferredColorScheme(.light)
        }

    }
}
