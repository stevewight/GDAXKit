//
//  Trade.swift
//  c01ns
//
//  Created by Steve on 1/2/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

class Trade:Decodable {
    let time:String
    let tradeID:Int
    let price:String
    let side:String
    let size:String
    
    enum CodingKeys: String, CodingKey {
        case tradeID = "trade_id"
        case time, price, side, size
    }
}
