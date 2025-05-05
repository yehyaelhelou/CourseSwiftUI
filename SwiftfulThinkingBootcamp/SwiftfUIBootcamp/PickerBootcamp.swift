//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/7/25.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection : String = "1"

    var body: some View {
        
        Picker(selection: .constant(1),
               label:
                HStack{
            Text("Filter : ")
            Text(selection)
        }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
    ,
               content: {
            
            Text("1").tag(1)
            Text("2").tag(2)
        })
        
        .pickerStyle(MenuPickerStyle())
           
        
    
        
        
//        VStack{
            //
            //            HStack{
            //                Text("Age: ")
            //                Text(selection)
            //            }
        
        

            //
            //            Picker(selection: $selection ,
            //                   label: Text("Picker"),
            //                   content:{
            //
            //                ForEach(18..<100){ number in
            //                    Text("\(number)")
            //                        .tag("\(number)")
            //                        .font(.headline)
            //                        .foregroundColor(.red)
            //                        .tag("\(number)")
            //                }
            //           })
            //              .pickerStyle(WheelPickerStyle())
            ////            .background(Color.gray.opacity(0.3))
            //
//                    }

        }
    
    }

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
