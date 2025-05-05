//
//  TextfiledBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/6/25.
//

import SwiftUI

struct TextfiledBootcamp: View {
    
    @State var textFiledText : String = ""
    @State var dataArray : [String] = []
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Type something here...", text: $textFiledText)
                //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                    

                Button(action: {
                    if textApproperiate(){
                        saveText()
                    }
                },label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textApproperiate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!textApproperiate())
                
                
                ForEach(dataArray , id: \.self){ data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextFiled Bootcamp!")

        }
    }
    
    func textApproperiate() -> Bool{
        // Check text
        if textFiledText.count >= 3 {
            return true
        }
        return false
        
    }
    
    func saveText(){
        dataArray.append(textFiledText)
        textFiledText = ""
    }

}


struct TextfiledBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextfiledBootcamp()
    }
}
