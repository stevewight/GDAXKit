//
//  Heartbeat.swift
//  c01ns
//
//  Created by Steve on 1/5/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

class Heartbeat:Decodable {
    let lastTradeID:Int
    let productID:String
    let sequence:Int
    let time:String
    
    enum CodingKeys:String, CodingKey {
        case lastTradeID = "last_trade_id"
        case productID = "product_id"
        case sequence, time
    }
    
}
