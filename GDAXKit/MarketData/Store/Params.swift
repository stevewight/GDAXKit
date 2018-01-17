//
//  Params.swift
//  GDAXKit
//
//  Created by Steve on 1/16/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

enum Params {
    case historic(range:DateRange,granularity:Granularity)
    
    public func build()->[String:String] {
        switch self {
        case let .historic(range,granularity):
            return buildRange(range, granularity:granularity)
        }
    }
    
    private func buildRange(_ range:DateRange, granularity:Granularity)->[String:String] {
        var params = [String:String]()
        params["start"] = range.start().iso8601
        params["end"] = Date().iso8601
        params["granularity"] = granularity.rawValue
        return params
    }
}
