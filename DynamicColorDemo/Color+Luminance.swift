//
//  Color+Luminance.swift
//  DynamicColorDemo
//
//  Created by Pedro Rojas on 28/03/24.
//

import SwiftUI

extension Color {
    func luminance() -> Double {
        // Convert SwiftUI Color to UIColor
        let uiColor = UIColor(self)
        
        // Extract RGB values
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        uiColor.getRed(&red, green: &green, blue: &blue, alpha: nil)
        
        // Compute luminance.
        return 0.2126 * Double(red) + 0.7152 * Double(green) + 0.0722 * Double(blue)
    }
    
    func isLight() -> Bool {
        return luminance() > 0.5
    }
    
    func adaptedTextColor() -> Color {
        return isLight() ? Color.black : Color.white
    }
}
