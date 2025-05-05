//
//  SubmitTextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/27/25.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    @State private var text: String = ""
    var body: some View {
        
        VStack{
            TextField("Placeholder....", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("something to the console!")
                }
            
            TextField("Placeholder....", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("something to the console!")
                }
            
            TextField("Placeholder....", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("something to the console!")
                }
        }
 
    }
}

struct SubmitTextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBootcamp()
    }
}
