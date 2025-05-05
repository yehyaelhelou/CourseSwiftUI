//
//  NavtivePopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/30/25.
//

import SwiftUI

struct NavtivePopoverBootcamp: View {
    @State private var showPopover: Bool = false
    
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
            
            Button("CLICK ME"){
                showPopover.toggle()
            }
            .padding(20)
            .background(Color.yellow)
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.top) ,content: {
                Text("hello , subscribers!")
                //                    .presntaionCompactAdpation(.popover)
            })
        }
       // هنا يوجد تكملة سيتم أخد باقي الكود منgithub    
    }
        
}

struct NavtivePopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavtivePopoverBootcamp()
    }
}
