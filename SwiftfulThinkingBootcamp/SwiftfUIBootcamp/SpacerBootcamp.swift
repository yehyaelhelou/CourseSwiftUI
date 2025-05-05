//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/22/25.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack{
            HStack(spacing: 0){
                Image.init(systemName: "xmark")
                    .font(.title)
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                
                
                
                Image.init(systemName: "gear")
                    .font(.title)
            }
            
            .font(.title)
            .background(Color.yellow)
            .padding(.horizontal)
            .background(Color.blue)
            
            Spacer()
                .frame(width: 10)
                .background(Color.orange)
        }
        .background(Color.yellow)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
