//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/5/25.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert : Bool = false
    @State var alertType  : MyAlerts? = nil
    //@State var alertTitle : String = " "
    //@State var alertMessage : String = " "
    @State var backgroundColor : Color = Color.yellow
    
    
    enum MyAlerts{
        case success
        case error
    }
    
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("BUTTON 1") {
                    alertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO"
//                    alertMessage = "The vido could not be uploaded"
                    showAlert.toggle()
  
                }
                
                Button("BUTTON 2") {
                    alertType = .success
//                    alertTitle = "successfully uploaded video 🥰"
//                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }
                .padding(10)
                 
            }
            
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }

    }
    
    func getAlert() -> Alert{
        
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error!"))
        case .success:
            return Alert(title: Text("This was a success!") , message: nil , dismissButton: .default(Text("OK") , action: {
                backgroundColor = Color.green
            }))
            
        default :
            return Alert(title: Text("ERROR"))
        }
        
        
        //        return Alert(title: Text("This is the title"),
//                                     message: Text("here we will describe the error."),
//                                     primaryButton:  .destructive(Text("Delete") ,
//                                                                  action:{
//                                   backgroundColor = .green
//                               }),
//                                     secondaryButton: .cancel())
                               // Alert(title: Text("There was an error!"))
        
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
