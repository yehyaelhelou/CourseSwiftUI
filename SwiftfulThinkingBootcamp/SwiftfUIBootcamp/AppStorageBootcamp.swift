//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/23/25.
//

import SwiftUI

struct AppStorageBootcamp: View {

    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing:20){
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName{
                Text(name)
            }
            
            Button("save".uppercased()){
                let name = "Nick"
               currentUserName = "Yehya elhelou"
                UserDefaults.standard.set(name, forKey: "name")
            }
        }
        .onAppear{
            currentUserName = UserDefaults.standard.string(forKey: "name")
        }
        
        
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
