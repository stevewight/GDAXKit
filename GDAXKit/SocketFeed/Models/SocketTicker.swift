//
//  SocketTicker.swift
//  c01ns
//
//  Created by Steve on 1/5/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

class SocketTicker:Decodable {
    let tradeID:Int
    let sequence:Int
    let productID:String
    let price:String
    let open24h:String
    let volume24h:String
    let low24h:String
    let high24h:String
    let volume30d:String
    let bestBid:String
    let bestAsk:String
    let side:String
    let time:String
    let lastSize:String
    
    enum CodingKeys:String, CodingKey {
        case tradeID = "trade_id"
        case productID = "product_id"
        case sequence, price
        case open24h = "open_24h"
        case volume24h = "volume_24h"
        case low24h = "low_24h"
        case high24h = "high_24h"
        case volume30d = "volume_30d"
        case bestBid = "best_bid"
        case bestAsk = "best_ask"
        case side = "side"
        case time = "time"
        case lastSize = "last_size"
    }
    
}
