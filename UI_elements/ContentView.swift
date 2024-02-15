import SwiftUI

struct ContentView: View {
    let ballArray = ["circle.fill", "triangle.fill", "square.fill", "diamond.fill", "hexagon.fill"]

    @State private var ballImage: String = "circle.fill"
    @State private var question: String = ""

    var body: some View {
        VStack {
            Text("Ask Me Anything")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            Image(systemName: ballImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)

            TextField("Input your question", text: $question)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                let randomIndex = Int.random(in: 0..<ballArray.count)
                self.ballImage = ballArray[randomIndex]
            }) {
                Text("Ask")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
            .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
