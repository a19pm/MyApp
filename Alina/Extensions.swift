//
//  Extensions.swift
//  Alina
//
//  Created by Dmitry on 15/12/2022.
//

import SwiftUI
import UIKit

extension ShapeStyle where Self == Color {
  static func color(_ string: String) -> Color {
    let v = Int(string, radix: 16) ?? 0
    let red = Double((0xFF0000 & v) >> 16) / 0xFF
    let green = Double((0xFF00 & v) >> 8) / 0xFF
    let blue = Double(0xFF & v) / 0xFF
    return Color(red: red, green: green, blue: blue)
  }
}

extension UIColor {
  static func color(_ string: String) -> UIColor {
    let v = Int(string, radix: 16) ?? 0
    let red = Double((0xFF0000 & v) >> 16) / 0xFF
    let green = Double((0xFF00 & v) >> 8) / 0xFF
    let blue = Double(0xFF & v) / 0xFF
    return UIColor(red: red, green: green, blue: blue, alpha: 1)
  }
}

struct CornerRadiusStyle: ViewModifier {
  var radius: CGFloat
  var corners: UIRectCorner

  struct CornerRadiusShape: Shape {
    var radius = CGFloat.infinity
    var corners = UIRectCorner.allCorners

    func path(in rect: CGRect) -> Path {
      let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
      return Path(path.cgPath)
    }
  }

  func body(content: Content) -> some View {
    content
      .clipShape(CornerRadiusShape(radius: radius, corners: corners))
  }
}

extension View {
  func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
    ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
  }
}
