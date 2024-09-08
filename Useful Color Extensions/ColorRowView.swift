import SwiftUI

struct ColorRowView: View {
    
    let rectangleColors: [Color]
    let lower: Int
    let upper: Int
    
    let dim: CGFloat
    let radius: CGFloat
    
    var body: some View {
        GridRow {
            ForEach(lower ..< upper, id: \.self) { i in
                RectColorView(
                    color: rectangleColors[i],
                    dim: dim,
                    radius: radius
                )
            }
            
        }
    }
}

#Preview {
    
    Grid {
        ColorRowView(
            rectangleColors: [.red, .green, .blue],
            lower: 0,
            upper: 3,
            dim: 75,
            radius: 15
        )
    }
}
