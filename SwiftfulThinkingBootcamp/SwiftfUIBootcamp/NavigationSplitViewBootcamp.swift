//
//  NavigationSplitViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 5/2/25.
//

import SwiftUI


// NavigationSplitView -> iPad , MacOS , VisionOS

struct NavigationSplitViewBootcamp: View {
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit: Fruit? = nil

    
    var body: some View {
        NavigationSplitView(columnVisibility:$visibility){
            List(FoodCategory.allCases, id: \.rawValue, selection: $selectedCategory) { category in
                    NavigationLink(category.rawValue.capitalized,value:category)

                }
            .navigationTitle("Categories")
        }content: {
            if let selectedCategory{
                Group{
                    switch selectedCategory{
                    case .fruits :
                        List(Fruit.allCases, id: \.rawValue, selection: $selectedFruit) { fruit in
                            NavigationLink(fruit.rawValue.capitalized,value:fruit)
                        }
                    case .vegtables :
                        EmptyView()
                    case.meats:
                        EmptyView()
                    }
                }
                .navigationTitle(selectedCategory.rawValue)
            }else{
                Text("Select a category to begin! ")
            }
            
        }detail: {
            if let selectedFruit{
                Text("You selected : \(selectedFruit.rawValue)")
                    .font(.largeTitle)
                    .navigationTitle(selectedFruit.rawValue.capitalized)
            }
        }
        .navigationSplitViewStyle(.balanced)
    }
}

struct NavigationSplitViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSplitViewBootcamp()
    }
}
enum FoodCategory: String , CaseIterable{
    case fruits , vegtables , meats
}

enum Fruit: String , CaseIterable{
    case apple , banana , orange
}
