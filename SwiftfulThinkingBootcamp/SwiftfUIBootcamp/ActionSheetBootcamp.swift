//
//  ActionSheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Yehya elhelou on 4/6/25.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption : ActionSheetOption = .isOtherPost
    
    enum ActionSheetOption{
        case isMyPost
        case isOtherPost
    }
    
    
    var body: some View {
   
        VStack {
            HStack{
                Circle()
                    .frame(width: 30 ,height: 30)
                Text("@Username")
                Spacer()
                
                Button {
                    actionSheetOption = .isOtherPost
//                    actionSheetOption = .isOtherPost

                    showActionSheet.toggle()
                } label: {
                Image(systemName: "ellipsis")
                }
                .accentColor(.primary)

                
            }
            .padding(.horizontal)

            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
                
            .actionSheet(isPresented: $showActionSheet, content: {
                getActionSheet()
        })
        }
    }
    
    func getActionSheet() -> ActionSheet{
        
        
        let shareButton  : ActionSheet.Button = .default(Text("Share")){
            // add code to share post
        }
        
        let reportButton : ActionSheet.Button = .destructive(Text("Report")){
            // add code to report this post
        }
        
        let deleteButton : ActionSheet.Button = .destructive(Text("Delete")){
            // add code to delete this post
        }
        
        let cancelButton : ActionSheet.Button = .cancel()
        let title = Text("what would you like to do?")
        
        switch actionSheetOption{
        case .isOtherPost :
            return ActionSheet(
                title: title ,
        message:nil ,
        buttons: [shareButton , reportButton , cancelButton])
            
            
        case .isMyPost :
            return ActionSheet(
                title: title ,
                message: nil ,
                buttons: [shareButton , reportButton , deleteButton , cancelButton])
        }

//        return ActionSheet(title:Text("This is the title!"))
//
//
//        let button1 : ActionSheet.Button = .default(Text("Default"))
//        let button2 : ActionSheet.Button = .destructive(Text("Destuctive"))
//        let button3  : ActionSheet.Button = .cancel()
//
//        return ActionSheet(title:
//                            Text("This is the title!"),
//                            message: Text("This is the message."),
//                            buttons: [button1, button2 , button3])

  
        
    }
        
    
}




struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
