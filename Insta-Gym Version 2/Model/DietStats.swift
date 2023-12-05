//
//  DietStats.swift
//  Insta-Gym Version 2
//
//  Created by Paulo Filipe Moreira da Silva on 05/12/23.
//

import Foundation

struct DietStats: Codable {
    // Init all to 0
    init(calories: Int, proteins: Int, carbs: Int, fats: Int, water: Int) {
        self.calories = 0
        self.proteins = 0
        self.carbs = 0
        self.fats = 0
        self.water = 0
    }
    
    var calories: Int
    var proteins: Int
    var carbs: Int
    var fats: Int
    var water: Int
}


let MOCK_DIET_STATS = DietStats(calories: 2000, proteins: 150, carbs: 150, fats: 50, water: 2000)
let MOCK_DIET_GOALS = DietStats(calories: 1500, proteins: 200, carbs: 200, fats: 50, water: 2000)
