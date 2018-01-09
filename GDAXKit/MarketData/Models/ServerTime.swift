//
//  ServerTime.swift
//  c01ns
//
//  Created by Steve on 1/2/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public class ServerTime:Decodable {
    public let iso:String
    public let epoch:Double
}
