//
//  Ticker.swift
//  c01ns
//
//  Created by Steve on 1/2/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public class Ticker:Codable {
    public let tradeID:Int
    public let price:String
    public let size:String
    public let bid:String
    public let ask:String
    public let volume:String
    public let time:Date
    
    enum CodingKeys: String, CodingKey {
        case tradeID = "trade_id"
        case price, size, bid, ask, volume, time
    }
}
