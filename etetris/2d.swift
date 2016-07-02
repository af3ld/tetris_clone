//
//  2d.swift
//  etetris
//
//  Created by Alex Feldman on 7/1/16.
//  Copyright © 2016 Alex Feldman. All rights reserved.
//

class Array2d<T> {
    
    let cols: Int
    let rows: Int
    var arr: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.cols = columns
        self.rows = rows
        
        arr = Array<T?>(count: rows * columns, repeatedValue: nil)
    }
    
    subscript(column: Int, row: Int) -> T? {
        get {
            return arr[(row * cols) + column]
        }
        set(newVal) {
            arr[(row * cols) + column] = newVal
        }
    }
}

