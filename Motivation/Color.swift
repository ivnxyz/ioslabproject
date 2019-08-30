//
//  Color.swift
//  Motivation
//
//  Created by Iván Martínez on 8/30/19.
//  Copyright © 2019 Iván Martínez. All rights reserved.
//

import UIKit

// Crear estructura para el color
class Color {
    let red: CGFloat
    let green: CGFloat
    let blue: CGFloat
    
    init(red: CGFloat, green: CGFloat, blue: CGFloat) {
        self.red = red/255.0
        self.green = green/255.0
        self.blue = blue/255.0
    }
    
    func obtenerColorBonito() -> UIColor {
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}
