//
//  GroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/30/25.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        
        VStack(spacing:50){
            Text("Hello , world!")
            
            Group{
                Text("hello  , world!")
                Text("hello  , world!")

            }
            .font(.caption)
            .foregroundColor(.green)
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

struct GroupBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GroupBootcamp()
    }
}
