//
//  Heartbeat.swift
//  c01ns
//
//  Created by Steve on 1/5/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public class Heartbeat:Decodable {
    public let lastTradeID:Int
    public let productID:String
    public let sequence:Int
    public let time:String
    
    enum CodingKeys:String, CodingKey {
        case lastTradeID = "last_trade_id"
        case productID = "product_id"
        case sequence, time
    }
    
}
