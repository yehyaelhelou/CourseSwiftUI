//
//  TableViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/9/25.
//

import SwiftUI

struct TableViewBootcamp: View {
    @State private var selectedTab: Int = 0
    
    let icons : [String] = ["heart.fill" , "globe" , "house.fill", "person.fill"]
    
    var body: some View {
        
        TabView{
            ForEach(icons, id: \.self){ icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center : .center , startRadius: 5, endRadius:300))
        
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        // TabView that holds multiple tabs
        //        TabView(selection: $selectedTab) {
        //
        //
        //            // Home Tab - Contains a red background and a large title
        //            HomeView(selectedTab: $selectedTab)
        //                .tabItem {
        //                    Image(systemName: "house.fill") // House icon for Home tab
        //                    Text("Home")  // Label for Home tab
        //                }
        //                .tag(0)
        //
        //            // Browse Tab - Displays a text with a globe icon
        //            Text("BROWSE TAB")
        //                .tabItem {
        //                    Image(systemName: "globe") // Globe icon for Browse tab
        //                    Text("Browse") // Label for Browse tab
        //                }
        //                .tag(1)
        //
        //            // Profile Tab - Displays a text with a person icon
        //            Text("PROFILE TAB")
        //                .tabItem {
        //                    Image(systemName: "person.fill") // Person icon for Profile tab
        //                    Text("Profile") // Label for Profile tab
        //                }
        //                .tag(2)
        //        }
        //        .accentColor(.red) // Change the accent color for TabView items
        //    }
    }
    
    struct HomeView: View {
        
        
        @Binding var selectedTab : Int
        
        var body: some View {
            ZStack {
                Color.red.ignoresSafeArea()
                VStack{
                    
                    Text("Home Tab")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    Button(action: {
                        // Navigation action for the profile tab
                        selectedTab = 2
                        
                    }, label: {
                        Text("Go to Profile")
                            .font(.headline)
                            .padding()
                            .padding(.horizontal)
                            .background(Color.white)
                            .cornerRadius(10)
                        
                    })
                }
                
                
                
                
                .padding()
            }
        }
    }
    
    // Preview for testing the layout
    struct TableViewBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            TableViewBootcamp() // Show the preview for TableViewBootcamp
        }
    }
    
}
