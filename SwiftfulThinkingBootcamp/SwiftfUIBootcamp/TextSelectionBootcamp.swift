//
//  TextSelectionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/26/25.
//

import SwiftUI

struct TextSelectionBootcamp: View {
    var body: some View {
        Text("welcome to your home ")
            .font(.largeTitle)
            .textSelection(.enabled)
        
    }
}

struct TextSelectionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionBootcamp()
    }
}
