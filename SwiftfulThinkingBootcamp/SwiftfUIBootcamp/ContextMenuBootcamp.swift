import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("SwiftUI Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30)) // تم تعديل هذا السطر لاستخدام المتغير backgroundColor
        .contextMenu {
            Button(action: {
                backgroundColor = .yellow
            }) {
                Label("Share Post", systemImage: "flame.fill")
            }
            
            Button(action: {
                backgroundColor = .orange
            }) {
                Text("Report Post")
            }
            
            Button(action: {
                backgroundColor = .green
            }) {
                HStack {
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                        .font(.title2)
                }
            }
        }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
