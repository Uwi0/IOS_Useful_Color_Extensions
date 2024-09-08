import SwiftUI

struct RectColorView: View {
    
    let color: Color
    let dim: CGFloat
    let radius: CGFloat
    
    var body: some View {
        RoundedRectangle(cornerRadius: radius)
            .fill(color)
            .frame(width: dim, height: dim)
            .overlay(RoundedRectangle(cornerRadius: radius).stroke())
    }
}

#Preview {
    RectColorView(color: .red, dim: 50, radius: 15)
}
