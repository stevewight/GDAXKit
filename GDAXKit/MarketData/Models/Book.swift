//
//  Book.swift
//  c01ns
//
//  Created by Steve on 1/2/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

class Book:Decodable {
    let sequence:Int
    let bids:[Order]
    let asks:[Order]
}

class Order:Decodable {
    let price:String
    let size:String
    let numOrders:Int
    
    required init(from decoder:Decoder) throws {
        var container = try decoder.unkeyedContainer()
        price = try container.decode(String.self)
        size = try container.decode(String.self)
        numOrders = try container.decode(Int.self)
    }
}
