//
//  Stat.swift
//  c01ns
//
//  Created by Steve on 1/2/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

class Stat:Decodable {
    let open:String
    let high:String
    let low:String
    let volume:String
    let last:String
    let volume30Day:String
    
    enum CodingKeys: String, CodingKey {
        case open, high, low, volume, last
        case volume30Day = "volume_30day"
    }
}
