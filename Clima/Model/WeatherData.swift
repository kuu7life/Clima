//
//  WeatherData.swift
//  Clima
//
//  Created by Kutman Amangeldiev on 2022/4/27.
//

import Foundation


struct WeatherData:Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Weather: Codable {
    let id: Int
}

struct Main: Codable{
    let temp: Double
}
