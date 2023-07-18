
import SwiftUI

struct CircleView: View {
    let alpha: Double
    let color: Color
    
    var body: some View {
        Circle()
            .fill(color.opacity(alpha))
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(color: .white, radius: 7)
    }
}

