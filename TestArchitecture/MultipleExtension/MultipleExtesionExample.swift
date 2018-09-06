//
//  MultipleExtesionExample.swift
//  TestArchitecture
//
//  Created by Luis Goyes on 9/6/18.
//  Copyright © 2018 Luis Goyes. All rights reserved.
//

import Foundation

protocol A {
    var a : Int { get set }
}

protocol B : A {
    var b : Int { get set }
}

class C : B {
    var b: Int
    
    var a: Int

    init() {
        a = 0
        b = 0
    }
}
