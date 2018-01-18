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
    
    public func products(complete:@escaping (_ products:[Product])->Void) {
        request.run(router: Router.products(), factory: Factory.products()) { items in
            complete(items as! [Product])
        }
    }
    
    public func currencies(complete:@escaping (_ currencies:[Currency])->Void) {
        request.run(router: Router.currencies(), factory: Factory.currencies()) { items in
            complete(items as! [Currency])
        }
    }
    
    public func book(productID:String, complete:@escaping (_ books:[Book])->Void) {
        request.run(router: Router.book(productID: productID, level:.one), factory: Factory.book()) { items in
            complete(items as! [Book])
        }
    }
    
    public func ticker(productID:String, complete:@escaping (_ tickers:[Ticker])->Void) {
        request.run(router: Router.ticker(productID: productID), factory: Factory.ticker()) { items in
            complete(items as! [Ticker])
        }
    }
    
    public func trades(productID:String, complete:@escaping (_ trades:[Trade])->Void) {
        request.run(router: Router.trades(productID: productID), factory: Factory.trades()) { items in
            complete(items as! [Trade])
        }
    }
    
    public func historicRates(productID:String, range:DateRange, granularity:Granularity, complete:@escaping (_ candles:[Candle])->Void) {
        let params = Params.historic(range: range, granularity: granularity)
        request.run(router: Router.historic(productID: productID, params: params.build()), factory: Factory.historic()) { items in
            complete(items as! [Candle])
        }
    }
    
    public func historicRates(productID:String, start:Date, end:Date, granularity:Granularity, complete:@escaping (_ candles:[Candle])->Void) {
        let params = Params.historicDates(start: start, end: end, granularity: granularity)
        request.run(router: Router.historic(productID: productID, params: params.build()), factory: Factory.historic()) { items in
            complete(items as! [Candle])
        }
    }
    
    public func twentyFourHourStats(productID:String, complete:@escaping (_ stats:[Stat])->Void) {
        request.run(router: Router.stats(productID: productID), factory: Factory.stats()) { items in
            complete(items as! [Stat])
        }
    }
    
    public func time(complete:@escaping (_ times:[ServerTime])->Void) {
        request.run(router: Router.time(), factory: Factory.time()) { items in
            complete(items as! [ServerTime])
        }
    }
    
}
