import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.red1)
                .frame(width: 50, height: 50)
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.cornFlowerBlue)
                .frame(width: 50, height: 50)
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.gold)
                .frame(width: 50, height: 50)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
