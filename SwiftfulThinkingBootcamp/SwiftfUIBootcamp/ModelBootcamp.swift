//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/19/25.
//

import SwiftUI

struct UserModel : Identifiable{
    let id: String = UUID().uuidString
    let displayName : String
    let userName : String
    let followerCount : Int
    let isVerified : Bool
    
    
}

struct ModelBootcamp: View {
    
    @State var users : [UserModel] = [
//        "Yehya" , "Ahmed" , "Abd" , "Elhelou"
        UserModel(displayName: "yehya", userName: "yehya11", followerCount: 100, isVerified: true ),
        UserModel(displayName: "ahmed", userName: "ahmed22", followerCount: 1500, isVerified: false),
        UserModel(displayName: "abd", userName: "abd33", followerCount: 200, isVerified: false),
        UserModel(displayName: "elhelou", userName: "elhelou44", followerCount: 600, isVerified: true)]

    
    var body: some View {
        NavigationView{
            List{
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height:35 )
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified{
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                            
                        }
                        
                        VStack{
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Follower")
                                .font(.caption)
                        }
                        
                    }
                    .padding(.vertical , 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
        
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
