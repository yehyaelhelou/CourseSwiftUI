//
//  LIistBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/4/25.
//

import SwiftUI

struct LIistBootcamp: View {
    
    @State var fruits  : [String] = ["apple" , "orang" , "banana" , "peach"]
    @State var veggies : [String] = ["Tomato ", "potato" , "carrot"]
    var body: some View {
        NavigationView {
            List{
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                                .font(.title2)
                                .foregroundColor(Color.orange)
                                Image(systemName: "flame.fill" )
                                .font(.caption)
                        }
                    
                ) {
                        ForEach(fruits , id: \.self){ fruit in
                            Text(fruit.capitalized)
                                .font(.caption)
                                .padding(.vertical)
                            
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.blue)

                    }
                
                Section(header: Text("Veggies")) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                }
                
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Graocery List")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
            
        }
        
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices : IndexSet  , newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add(){
        fruits.append("Cocount")
    }
    
}
            
                    
struct LIistBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LIistBootcamp()
    }
}

