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

