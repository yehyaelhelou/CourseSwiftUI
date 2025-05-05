//
//  SteeperBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/9/25.
//

import SwiftUI

struct SteeperBootcamp: View {
    
    @State var stepperValue : Int = 10
    @State var widthIncrment : CGFloat = 0
    
    
    var body: some View {
        VStack {
            Stepper("Stepper :  \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrment , height: 100)
            Stepper("Stepper 2 ") {
                // increment
                incrementWidth(amount: 10)
            } onDecrement: {
                // decrement
                incrementWidth(amount: -10)
            }
            
        }
    }
    
    func incrementWidth(amount : CGFloat){
        withAnimation(.easeInOut){
            widthIncrment += amount
        }
    }
}
struct SteeperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SteeperBootcamp()
    
    }
}
