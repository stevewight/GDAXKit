//
//  Ticker.swift
//  c01ns
//
//  Created by Steve on 1/2/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

class Ticker:Decodable {
    let tradeID:Int
    let price:String
    let size:String
    let bid:String
    let ask:String
    let volume:String
    let time:String
    
    enum CodingKeys: String, CodingKey {
        case tradeID = "trade_id"
        case price, size, bid, ask, volume, time
    }
}
