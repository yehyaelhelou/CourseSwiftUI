import SwiftUI

struct ControlGroupMenuBootcamp: View {
    var body: some View {
        Menu("My Menu") {
            ControlGroup {
                Button("Uno") {
                    // Action for Uno
                }
                Button("Dos") {
                    // Action for Dos
                }
                /*
                Button("Tres") {
                    // Uncomment and add action if needed
                }
                */
                Menu("How are you?") {
                    Button("Good") {
                        // Action for Good
                    }
                    Button("Bad") {
                        // Action for Bad
                    }
                }
            }
            Button("Two") {
                // Action for Two
            }
            Menu("Three") {
                Button("Hi") {
                    // Action for Hi
                }
                Button("Hello") {
                    // Action for Hello
                }
            }
        }
    }
}

struct ControlGroupMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ControlGroupMenuBootcamp()
    }
}
