//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/3/25.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen : Bool = false
    
    var body: some View {
        ZStack{
            Color.orange.edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            
            //                // Method - 1 -  SHEET
            //            .sheet(isPresented: $showNewScreen  , content: {
            //                NewScreen()
            //                })
            
            
            // Method  - 1
//            fullScreenCover(isPresented: $showNewScreen , content : {
//                NewScreen()
//            })
            
            
            
            // Method - 2 - TRANSTION
            
//            ZStack{
//                if showNewScreen{
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top , 120)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//
//                }
//            }
//            zIndex(2.0)

            
            // Method 3 - ANIMATION OFFSET
            
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top , 100)
                .offset(y: showNewScreen ? 0 :  UIScreen.main.bounds.height)
                .animation(.spring())
            
        }
        
    }
}

struct NewScreen : View{
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen : Bool
    
    
    var body: some View{
        ZStack(alignment:.topLeading){
            Color.blue.edgesIgnoringSafeArea(.all)
            
            
            Button(action: {
//                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
                
            }, label: {
                Image(systemName: "xmark")
                .foregroundColor(.white)
                .font(.largeTitle)
                .padding(20)
            })
        
            }
        
    
            
        }
    }

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
//        NewScreen()

    }
}

