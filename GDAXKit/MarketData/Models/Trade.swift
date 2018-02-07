//
//  Trade.swift
//  c01ns
//
//  Created by Steve on 1/2/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public class Trade:Codable {
    public let time:Date
    public let tradeID:Int
    public let price:String
    public let side:String
    public let size:String
    
    enum CodingKeys: String, CodingKey {
        case tradeID = "trade_id"
        case time, price, side, size
    }
}
