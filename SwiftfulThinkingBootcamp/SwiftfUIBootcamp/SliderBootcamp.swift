//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/9/25.
//

import SwiftUI

struct SliderBootcamp: View {

    @State var sliderValue: Double = 10
    @State var color : Color = .red
    
    var body: some View {
        VStack {
            Text("Rating : ")
            Text(String(format: "%.2f", sliderValue)
            )
//            Text("\(sliderValue)")
//            Slider(value:$sliderValue)
//            Slider(value: $sliderValue, in: 0...100)
//            Slider(value: $sliderValue, in: 1...5 ,step: 0.5)
            .foregroundColor(color)
                Slider(value: $sliderValue,
                       in: 1...5,
                       step: 1.0,
                       onEditingChanged: {(_) in
                        color = .green
                },
                         minimumValueLabel: Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    ,
                       maximumValueLabel: Text("5")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                       ,
                       
                       label: {
                        Text("Title")
                }
                )
                .accentColor(.red)
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
