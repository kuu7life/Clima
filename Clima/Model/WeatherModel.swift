//
//  WeatherModel.swift
//  Clima
//
//  Created by Kutman Amangeldiev on 2022/4/28.
//

import Foundation


struct WeatherModel {
    let conditonId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String{
        return String(format: "%.1f", temperature)
    }
    
    var getConditionName: String{
        switch conditonId{
            case 200...232:
                return "cloud.bolt"
            case 300...321:
                return "cloud.drizzle"
            case 500...531:
                return "cloud.rain"
            case 600...622:
                return "cloud.snow"
            case 701...781:
                return "cloud.fog"
            case 800:
                return "sum.max"
            case 801...804:
                return "cloud.bolt"
            default:
                return "cloud"
        }
    }
}