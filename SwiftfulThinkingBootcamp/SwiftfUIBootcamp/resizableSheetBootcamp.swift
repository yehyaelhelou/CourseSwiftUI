//
//  resizableSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/30/25.
//

import SwiftUI

struct resizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var dentents: PresentationDetent = .large
    
    var body: some View {
        
        Button("Click Me!"){
            showSheet.toggle()
        }
        
        .sheet(isPresented: $showSheet, content: {
            MyNextSheet(dentents: $dentents)
            
//                .presentationDetents([.medium  , .large])
//                .presentationDetents([.fraction(0.1) , ,height(300),.medium  , .large])
//                .presentationDetents([height(500)])
//                .presentationDetents([.fraction(0.5),.medium, .large], selection: $dentents)
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
        })
//        .onAppear{
//            showSheet = true
//        }
    }
}

struct MyNextSheet: View{
    @Binding var dentents : PresentationDetent
    var body: some View{
        ZStack{
            Color.red.ignoresSafeArea()
        
            VStack{
                Button("20%"){
//                    dentents = .medium
                    dentents = .fraction(0.2)
                }
                
                Button("MEDUIM"){
                    dentents = .medium
                }
                
                Button("600 PX "){
                    dentents = .height(600)
                }
                
                Button("LARGE"){
                    dentents = .large
                }
                
            }
        }
        .presentationDetents([.fraction(0.2),.medium, .height(600),.large], selection: $dentents)
        .presentationDragIndicator(.hidden)

    }
}
struct resizableSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        resizableSheetBootcamp()
    }
}
