//
//  SocketTicker.swift
//  c01ns
//
//  Created by Steve on 1/5/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public class SocketTicker:Decodable {
    public let tradeID:Int
    public let sequence:Int
    public let productID:String
    public let price:String
    public let open24h:String
    public let volume24h:String
    public let low24h:String
    public let high24h:String
    public let volume30d:String
    public let bestBid:String
    public let bestAsk:String
    public let side:String
    public let time:Date
    public let lastSize:String
    
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
