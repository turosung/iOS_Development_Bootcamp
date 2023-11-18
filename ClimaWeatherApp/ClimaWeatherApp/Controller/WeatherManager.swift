//
//  WeatherManager.swift
//  ClimaWeatherApp
//
//  Created by Nuhu Sulemana on 12/11/2023.
//  Copyright © 2023 SwiftingWithTurosung. All rights reserved.
//

import Foundation
import CoreLocation

protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel)
    func didFailWithError(error: Error)
}

let apiKey = "INSERT_API_KEY_HERE"
/***GET AN API KEY FROM OPENWEATHER SITE - https://home.openweathermap.org/api_keys***/
 
struct WeatherManager {
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?APPID=\(apiKey)&units=metric"
    
    var delegate: WeatherManagerDelegate?
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(with: urlString)
    }
    
    func fetchWeather(latitude: CLLocationDegrees , longitude: CLLocationDegrees) {
        let urlString = "\(weatherURL)&lat=\(latitude)&lon=\(longitude)"
        performRequest(with: urlString)
        
    }
        
    func performRequest(with urlString: String) {
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                self.delegate?.didFailWithError(error: error)
                return
            }
            guard let safeData = data,
                  let weather = parseJSON(safeData)
            else {
                return
            }
            self.delegate?.didUpdateWeather(self, weather: weather)
        }
        task.resume()
    }
        
    func parseJSON(_ weatherData: Data) -> WeatherModel? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodedData.weather[0].id
            let name = decodedData.name
            let temp = decodedData.main.temp
            
            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            print(weather.temperatureString)
            return weather
            
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
    }
}
