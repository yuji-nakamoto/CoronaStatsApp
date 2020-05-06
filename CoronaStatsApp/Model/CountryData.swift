//
//  CountryData.swift
//  CoronaStatsApp
//
//  Created by yuji_nakamoto on 2020/05/05.
//  Copyright © 2020 yuji_nakamoto. All rights reserved.
//

import Foundation

class CountryData {
    let country: String
    let confirmed: Int
    let critical: Int
    let deaths: Int
    let recovered: Int
//    let longitude: Double
//    let latitude: Double
    
    init(country: String, confirmed: Int, critical: Int, deaths: Int, recovered: Int) {
        self.country = country
        self.confirmed = confirmed
        self.critical = critical
        self.deaths = deaths
        self.recovered = recovered
    }
    
    static func tranceformData(dict: [String: Any]) -> CountryData {
        let country = dict["country"] as? String ?? "Error"
        let confirmed = dict["confirmed"] as? Int ?? 0
        let critical = dict["critical"] as? Int ?? 0
        let deaths = dict["deaths"] as? Int ?? 0
        let recovered = dict["recovered"] as? Int ?? 0
        
        let countryData = CountryData(country: country, confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered)
        
        return countryData
    }
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}
