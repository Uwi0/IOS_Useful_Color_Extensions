import SwiftUI

struct ContentView: View {
    
    @State var rectangleColors: [Color] = [
            .maroon,
            .cadetBlue,
            .brown1,
            .greenYellow,
            .crimson,
            .orange1,
            .tomato,
            .coral,
            .darkCyan
        ]
    @State var textColor: Color = .deepSkyBlue
    @State var bgColor: Color = .mediumPurple
    
    var body: some View {
        VStack {
            Spacer()
            Grid {
                ColorRowView(
                    rectangleColors: rectangleColors,
                    lower: 0,
                    upper: 3,
                    dim: 75,
                    radius: 10
                )
                ColorRowView(
                    rectangleColors: rectangleColors,
                    lower: 3,
                    upper: 6,
                    dim: 75,
                    radius: 10
                )
                ColorRowView(
                    rectangleColors: rectangleColors,
                    lower: 6,
                    upper: 9,
                    dim: 75,
                    radius: 10
                )
                
            }
            Spacer()
            Button(
                action: {
                    rectangleColors = Color.randomColorsN(n: rectangleColors.count)
                },
                label: {
                    Text("Random Colors")
                    .foregroundStyle(textColor)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).fill(bgColor))
            })
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
