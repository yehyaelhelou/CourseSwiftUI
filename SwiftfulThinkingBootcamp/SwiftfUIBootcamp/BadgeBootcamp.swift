//
//  BadgeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/27/25.
//

import SwiftUI

struct BadgeBootcamp: View {
    var body: some View {

        
        List{
            Text("Hello World").badge(24)
            Text("Hello World").badge(22)
            Text("Hello World").badge(55)
            Text("Hello World").badge(12)
        }
//        TabView{
//            Color.red.tabItem{
//                Image(systemName: "heart.fill")
//                Text("Hello")
//            }
//            .badge(2)
//
//            Color.red.tabItem{
//                Image(systemName: "heart")
//                Text("Hello")
//            }
//            .badge(55)
//
//            Color.red.tabItem{
//                Image(systemName: "heart.fill")
//                Text("Hello")
//            }
//            .badge(6)
//
//        }
    }
}

struct BadgeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBootcamp()
    }
}
