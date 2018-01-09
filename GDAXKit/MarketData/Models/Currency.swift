//
//  Currency.swift
//  c01ns
//
//  Created by Steve on 12/28/17.
//  Copyright © 2017 Steve Wight. All rights reserved.
//

import UIKit

class Currency:Decodable {
    let id:String
    let name:String
    let minSize:String
    let status:String
    let message:String?
    
    enum CodingKeys: String, CodingKey {
        case id, name, status, message
        case minSize = "min_size"
    }
    
}
