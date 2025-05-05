//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/14/25.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID : String? = "yehya"
    @State var displayText : String? = nil
    @State var isLoading : Bool = false
    
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Here we are pracitcing safe coding!")
                
                if let text = displayText{
                    Text(text)
                        .font(.title)
                        .foregroundColor(.red)
                } // This we will make a test for the code.
                
//                Text(displayText!)
//                    .font(.title)
                
                // DO NOT USER ! EVER!!!!!!
                // DON DONT FORCE UNWEAP VALUES
                
                
                if isLoading{
                    ProgressView()
                }
                // when is loading show progress view under the DisplayText
                
                Spacer()
            }
            .navigationTitle("Safe Coding!")
            .onAppear{
                loadData()    // here is implemented the  function.
            }
        }
    }
    
    func loadData(){
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 5 ){
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        }else{
            displayText = "Error. There is no User ID!"
        }
    }
    
    func loadData2(){
        guard let userID = currentUserID else{
            displayText = "Error There is no User ID!"
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5 ){
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        }
    }
    
}
    
    struct IfLetGuardBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            IfLetGuardBootcamp()
        }
    }

