//
//  Extension.swift
//  Calculator
//
//  Created by Subroto Debnath on 2023-01-14.
//

import SwiftUI

extension Text {
    func customButtonText(color:UInt) -> some View{
        self.frame(width: UIScreen.main.bounds.width/4.63,height: UIScreen.main.bounds.height/7.41) // width = 180, Height = 150
            .foregroundColor(.white)
            .background(Color.init(hex: color))
            .cornerRadius(20)
            .font(.system(size: 80))

    }
}

extension TextField{
    func customTextField(fontSize:CGFloat)->some View{
        self.frame(width: UIScreen.main.bounds.width - 40,height: 100)
            .font(.system(size:fontSize))
            .padding(20)
            .disabled(true)
    }
}
    
extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
