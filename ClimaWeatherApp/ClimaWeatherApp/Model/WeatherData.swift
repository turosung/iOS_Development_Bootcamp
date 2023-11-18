//
//  WeatherData.swift
//  ClimaWeatherApp
//
//  Created by Nuhu Sulemana on 13/11/2023.
//  Copyright © 2023 SwiftingWithTurosung. All rights reserved.
//

import Foundation


//Create a structure in which the weather will come back in
struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
    let id: Int
}
