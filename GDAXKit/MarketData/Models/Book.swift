//
//  Book.swift
//  c01ns
//
//  Created by Steve on 1/2/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public class Book:Decodable {
    public let sequence:Int
    public let bids:[Order]
    public let asks:[Order]
}

public class Order:Decodable {
    public let price:String
    public let size:String
    public let numOrders:Int
    
    public required init(from decoder:Decoder) throws {
        var container = try decoder.unkeyedContainer()
        price = try container.decode(String.self)
        size = try container.decode(String.self)
        numOrders = try container.decode(Int.self)
    }
}
