//
//  Shape.swift
//  etetris
//
//  Created by Alex Feldman on 7/1/16.
//  Copyright © 2016 Alex Feldman. All rights reserved.
//

import SpriteKit

let numOrientation: UInt32 = 4

enum Orientation: Int, CustomStringConvertible{
    case Zero = 0, Ninety, OneEighty, TwoSeventy
    
    var description: String {
        switch self{
        case .Zero:
            return "0"
        case .Ninety:
            return "90"
        case .OneEighty:
            return "180"
        case .TwoSeventy:
            return "270"
        }
    }
    static func random() -> Orientation {
        return Orientation(rawValue: Int(arc4random_uniform(numOrientation)))!
    }
    
    static func rotate(orientation: Orientation, clockwise: Bool) -> Orientation {
        var rotated = orientation.rawValue + (clockwise ? 1 : -1)
        
        if rotated > Orientation.TwoSeventy.rawValue {
            rotated = Orientation.Zero.rawValue
        } else if rotated < Orientation.Zero.rawValue {
            rotated = Orientation.TwoSeventy.rawValue
        }
        return Orientation(rawValue: rotated)!
    }
}
