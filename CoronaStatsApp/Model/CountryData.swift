//
//  CountryData.swift
//  CoronaStatsApp
//
//  Created by yuji_nakamoto on 2020/05/05.
//  Copyright © 2020 yuji_nakamoto. All rights reserved.
//

import Foundation

struct CountryData {
    let country: String
    let confirmed: Int
    let critical: Int
    let deaths: Int
    let recovered: Int
    let longitude: Double
    let latitude: Double
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}
