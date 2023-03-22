import SwiftUI

struct ContentView: View {
    @State var isActive: Bool = false

    var body: some View {
        ZStack {
            VStack {
                Button {
                    isActive = true
                } label: {
                    Text("Show popup")
                }
            }
            .padding()

            if isActive {
                CustomDialog(isActive: $isActive, title: "Access photos?", message: "This lets you choose which photos you want to add to this project.", buttonTitle: "Give Access") {
                    print("Pass to viewModel")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
