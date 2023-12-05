//
//  DietStats.swift
//  Insta-Gym Version 2
//
//  Created by Paulo Filipe Moreira da Silva on 05/12/23.
//

import Foundation

struct DietStats: Codable {    
    var calories: Int
    var proteins: Int
    var carbs: Int
    var fats: Int
    var water: Int
}


let MOCK_DIET_STATS = DietStats(calories: 1500, proteins: 160, carbs: 130, fats: 50, water: 2000)
let MOCK_DIET_GOALS = DietStats(calories: 2000, proteins: 200, carbs: 200, fats: 50, water: 2000)
