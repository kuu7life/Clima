//
//  WeatherManager.swift
//  Clima
//
//  Created by Kutman Amangeldiev on 2022/4/27.
//

import Foundation


struct WeatherManager{
    let weatherUrl = "https://api.openweathermap.org/data/2.5/weather?&appid=a876f7a6e5e483a99ef0755952f0de9a&units=metric"
    
    func fetchWeather(cityName: String){
        let urlString = "\(weatherUrl)&q=\(cityName)"
        performRequest(with: urlString)
    }
    
    func performRequest(with urlString: String){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil{
                    return
                }
                
                if let safeData = data{
                    self.parseJson(safeData)
                }
            }
            task.resume()
        }
    }
    
    func parseJson(_ weatherData:Data){
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodedData.name)
            print(decodedData.main.temp)
        } catch{
            print(error)
        }
    }
}
