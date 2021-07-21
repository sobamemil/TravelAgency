//
//  Extension.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/07/12.
//

import SwiftUI

extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}

extension View {
    // Default settings
    func customTextField(color: Color = .gray, padding: CGFloat = 3, lineWidth: CGFloat = 1.0) -> some View {
        self.modifier(TextFieldModifier(color: color, padding: padding, lineWidth: lineWidth))
    }
}

extension View {
    func border(width: CGFloat, edges: [Edge], color: SwiftUI.Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges)
                    .foregroundColor(color))
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

extension Color {
    static func getThemeColor() -> Color {
        let red: Double = 154/255
        let green: Double = 189/255
        let blue: Double = 199/255
        let themeColor = Color(red: red, green: green, blue: blue)

        return themeColor
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
