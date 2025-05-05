//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/4/25.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                NavigationLink("Hello , World! ", destination: MyOtherScreen())
                
                
                Text("Hello , World!")
                Text("Hello , World!")
                Text("Hello , World!")
                
            }
            
            .navigationTitle("All Inboxes")
            //        .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(false)
            .navigationBarItems(
                leading:  Image(systemName: "person.fill"),
                trailing: NavigationLink(destination: MyOtherScreen() ,
                                 label: {
                                     Image(systemName: "gear")
            })
                                        .accentColor(.red)
                                
         )
        }
    }
}
struct MyOtherScreen: View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen!")
                .navigationBarHidden(true)
            
            VStack{
                Button("Back Button"){
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click here", destination: Text("3rd screen!"))
            }
        }
    }
}
struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
