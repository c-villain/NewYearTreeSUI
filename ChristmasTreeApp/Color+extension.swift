import SwiftUI

extension Color {
    public enum Eve {
        static let background = Color.init(red: 0, green: 0.697, blue: 0.266)
    }
    
    public enum Ball {
        static let green = Color.init(red: 0.271, green: 0.982, blue: 0.577)
        static let pink = Color.init(red: 1, green: 0, blue: 0.254)
        static let cloud = Color.init(red: 0.415, green: 0.829, blue: 0.947)
        static let yellow = Color.init(red: 0.990, green: 0.935, blue: 0.131)
        static let lightYellow = Color.init(red: 0.993, green: 0.968, blue: 0.649)
    }

    static let christmasRed = Color.init(red: 214/255, green: 0, blue: 28/255)
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension Color {
    static func random() -> Color {
        return Color(
           red:   CGFloat.random(),
           green: CGFloat.random(),
           blue:  CGFloat.random()
        )
    }
}
