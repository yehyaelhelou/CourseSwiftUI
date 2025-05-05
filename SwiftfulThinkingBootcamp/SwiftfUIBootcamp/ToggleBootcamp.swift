//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/7/25.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    
    @State var toggleIsOn : Bool = false
    
    var body: some View {
        
        VStack{
            
            HStack{
            Text("Status : ")
                Text(toggleIsOn ? "Online" : "Offline")
                
            }
            .font(.title)
            
            Toggle(isOn: $toggleIsOn,
                   label: {
                Text("Change status")
            })
            .toggleStyle(SwitchToggleStyle(tint: Color.pink))
            
            Spacer()
        }
        .padding(.horizontal , 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
