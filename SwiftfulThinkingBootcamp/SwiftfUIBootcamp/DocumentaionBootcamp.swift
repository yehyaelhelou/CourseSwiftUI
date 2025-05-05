//
//  DocumentaionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/12/25.
//

import SwiftUI

struct DocumentaionBootcamp: View {
    
    // MARK : BODY
    
    @State var date: [String] = ["Apples" ," Oranges" , "Bananas"]
    @State var showALert : Bool = false
    
    // MARK : FUNCTIONS


    // Working copy - things tp do
    /*
     1) fix title
     2) fix alert
     */
    

    var body: some View {
        NavigationView{ // START : NAV
            ZStack{
                // background
                Color.red.edgesIgnoringSafeArea(.all)
                
                
                // foreground
                foregroundLayer
                
                .navigationTitle("Documentaion")
                .navigationBarItems(trailing: Button("ALERT", action: {
                    showALert.toggle()
                }))
                .alert(isPresented: $showALert, content: {
                    getAlert(text:"This is the alert!")
                    
                })
            }
    } // END : NAV
    }
    
    // This is the foreground layer that holds a scrollView
    private var foregroundLayer : some View{
        ScrollView{ // START : SCROLLV
            Text("Hello")
            ForEach(date ,id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        }  // END : SCROLLV
    }
    
    
    // MARK : PREVIEW
    
    /// Gets an alert a specified title.
    ///
    /// // This function creats and return an alert immediately. The alert will have a title based on the text parameter but ot will NOT have a message.
    /// getAlert(Text: "HI" ) -> Alert(title: Text("HI"))
    ///
    /// Warning : There is no additional message in this Alert.
    /// - Parameter text: This is the fitle fore the alert.
    /// - Returns: Returns an alert with a title
    func getAlert(text: String) -> Alert{
        return Alert(title: Text(text))
    }
}
    struct DocumentaionBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            DocumentaionBootcamp()
        }
    }

