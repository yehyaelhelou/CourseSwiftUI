//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 3/27/25.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
      
        ScrollView{
            LazyVStack{
                ForEach(0..<10){ index in
                    ScrollView(.horizontal , showsIndicators: false) {
                        LazyHStack{
                            ForEach(0..<20){ index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200 , height: 300)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
 
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
    


//
//ScrollView(.vertical , showsIndicators: true , content: {
//    VStack{
//
//        ForEach(0..<50){ index in
//                Rectangle()
//                .fill(Color.blue)
//                .frame(height: 300)
//        }
//
//    }
//})
