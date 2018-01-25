//
//  MarketClient.swift
//  GDAXKit
//
//  Created by Steve on 12/28/17.
//  Copyright © 2017 Steve Wight. All rights reserved.
//

import UIKit

public class MarketClient: NSObject {
    
    let request = Request()
    
    public func products(complete:@escaping (_ result:Result<Any>)->Void) {
        request.run(router: Router.products(), factory: Factory.products()) { result in
            complete(result)
        }
    }
    
    public func currencies(complete:@escaping (_ result:Result<Any>)->Void) {
        request.run(router: Router.currencies(), factory: Factory.currencies()) { result in
            complete(result)
        }
    }
    
    public func book(productID:String, complete:@escaping (_ result:Result<Any>)->Void) {
        request.run(router: Router.book(productID: productID, level:.one), factory: Factory.book()) { result in
            complete(result)
        }
    }
    
    public func ticker(productID:String, complete:@escaping (_ result:Result<Any>)->Void) {
        request.run(router: Router.ticker(productID: productID), factory: Factory.ticker()) { result in
            complete(result)
        }
    }
    
    public func trades(productID:String, complete:@escaping (_ result:Result<Any>)->Void) {
        request.run(router: Router.trades(productID: productID), factory: Factory.trades()) { result in
            complete(result)
        }
    }
    
    public func historicRates(productID:String, range:DateRange, granularity:Granularity, complete:@escaping (_ result:Result<Any>)->Void) {
        let params = Params.historic(range: range, granularity: granularity)
        request.run(router: Router.historic(productID: productID, params: params.build()), factory: Factory.historic()) { result in
            complete(result)
        }
    }
    
    public func historicRates(productID:String, start:Date, end:Date, granularity:Granularity, complete:@escaping (_ result:Result<Any>)->Void) {
        let params = Params.historicDates(start: start, end: end, granularity: granularity)
        request.run(router: Router.historic(productID: productID, params: params.build()), factory: Factory.historic()) { result in
            complete(result)
        }
    }
    
    public func twentyFourHourStats(productID:String, complete:@escaping (_ result:Result<Any>)->Void) {
        request.run(router: Router.stats(productID: productID), factory: Factory.stats()) { result in
            complete(result)
        }
    }
    
    public func time(complete:@escaping (_ result:Result<Any>)->Void) {
        request.run(router: Router.time(), factory: Factory.time()) { result in
            complete(result)
        }
    }
    
}
