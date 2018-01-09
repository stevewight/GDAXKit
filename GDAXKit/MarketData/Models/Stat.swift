//
//  Stat.swift
//  c01ns
//
//  Created by Steve on 1/2/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public class Stat:Decodable {
    public let open:String
    public let high:String
    public let low:String
    public let volume:String
    public let last:String
    public let volume30Day:String
    
    enum CodingKeys: String, CodingKey {
        case open, high, low, volume, last
        case volume30Day = "volume_30day"
    }
}
