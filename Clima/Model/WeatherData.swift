//
//  WeatherData.swift
//  Clima
//
//  Created by Kutman Amangeldiev on 2022/4/27.
//

import Foundation


struct WeatherData:Decodable {
    let name: String
    let main: Main
}

struct Main: Decodable{
    let temp: Double
}
