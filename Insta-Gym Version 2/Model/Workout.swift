//
//  UserWorkouts.swift
//  Insta-Gym Version 2
//
//  Created by Paulo Filipe Moreira da Silva on 05/12/23.
//

import Foundation

struct Workout: Identifiable, Codable {
    let id: String
    let name: String
    let description: String?
    let image: String?
    let exercises: [Exercise]
}

let MOCK_WORKOUTS = [
    Workout(id: NSUUID().uuidString, name: "Chest Day", description: "Chest day is the best day", image: "https://media.giphy.com/media/3o7TKDh8Z5U9p0jW2Q/giphy.gif", exercises: MOCK_EXERCISES),
    Workout(id: NSUUID().uuidString, name: "Back Day", description: "Back day is the best day", image: "https://media.giphy.com/media/3o7TKDh8Z5U9p0jW2Q/giphy.gif", exercises: MOCK_EXERCISES),
    Workout(id: NSUUID().uuidString, name: "Shoulders Day", description: "Shoulders day is the best day", image: "https://media.giphy.com/media/3o7TKDh8Z5U9p0jW2Q/giphy.gif", exercises: MOCK_EXERCISES),
    Workout(id: NSUUID().uuidString, name: "Arms Day", description: "Arms day is the best day", image: "https://media.giphy.com/media/3o7TKDh8Z5U9p0jW2Q/giphy.gif", exercises: MOCK_EXERCISES)
]
