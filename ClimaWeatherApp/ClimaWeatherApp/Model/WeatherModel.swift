//
//  WeatherModel.swift
//  ClimaWeatherApp
//
//  Created by Nuhu Sulemana on 14/11/2023.
//  Copyright © 2023 SwiftingWithTurosung. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        let weatherCode = conditionId
        let weatherCondition: String
        
        switch weatherCode {
        case 800:
            weatherCondition = "sun.max"
        case 200..<232:
            weatherCondition = "cloud.bolt"
        case 300..<321:
            weatherCondition = "cloud.drizzle"
        case 500..<531:
            weatherCondition = "cloud.rain"
        case 600..<622:
            weatherCondition = "cloud.snow"
        case 701..<781:
            weatherCondition = "cloud.fog"
        case 801..<804:
            weatherCondition = "cloud.bolt"
        default:
            weatherCondition = "cloud"
        }
        return weatherCondition
    }
}

