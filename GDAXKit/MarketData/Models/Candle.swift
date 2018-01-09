//
//  Candle.swift
//  c01ns
//
//  Created by Steve on 1/7/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

class Candle: Decodable {
    let time:Double
    let low:Double
    let high:Double
    let open:Double
    let close:Double
    let volume:Double
    
    required init(from decoder:Decoder) throws {
        var container = try decoder.unkeyedContainer()
        time = try container.decode(Double.self)
        low = try container.decode(Double.self)
        high = try container.decode(Double.self)
        open = try container.decode(Double.self)
        close = try container.decode(Double.self)
        volume = try container.decode(Double.self)
    }
}
