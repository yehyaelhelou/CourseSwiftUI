//
//  ListSwipeActionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/27/25.
//

import SwiftUI

struct ListSwipeActionBootcamp: View {
    
    @State var fruits: [String] = ["apple","orange","banana","peach"]
    
    var body: some View {
        List{
            ForEach(fruits, id: \.self){
                Text($0.capitalized)
                swipeActions(edge: .trailing,
                             allowsFullSwipe: true){
                    Button("Archive"){
                        
                    }
                    .tint(.green)
                    
                    Button("Save"){
                        
                    }
                    .tint(.blue)
                    
                    Button("Junk"){
                        
                    }
                    .tint(.black)
                    
                }
                             .swipeActions(edge: .leading, allowsFullSwipe: false){
                                 Button("Share"){
                                 }
                                 .tint(.yellow)
                             }
            }
            //            .onDelete(perform: delete)
        }
    }
    
//    func delete(indexSet: IndexPath){
//        
//    }
}

struct ListSwipeActionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionBootcamp()
    }
}
