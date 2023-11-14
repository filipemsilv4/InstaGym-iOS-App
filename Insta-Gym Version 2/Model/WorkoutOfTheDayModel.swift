//
//  WorkoutOfTheDayModel.swift
//  Insta-Gym Version 2
//
//  Created by IFNMG

//Usado na tela Home

import SwiftUI

struct WorkoutOfTheDay: Identifiable{
    var id: UUID = .init()
    var name: String
    var numberOfWorkouts: String
    var color: Color
    var workoutDuration: String
    var image: String
}
var workoutOfTheDayList = [
    WorkoutOfTheDay(name: "Treino 1", numberOfWorkouts: "10", color: .blue, workoutDuration: "1h", image: ""),
    WorkoutOfTheDay(name: "Treino 2", numberOfWorkouts: "11", color: .blue, workoutDuration: "1h", image: ""),
    WorkoutOfTheDay(name: "Treino 3", numberOfWorkouts: "12", color: .blue, workoutDuration: "1h", image: "")
]

var workoutOfTheDayList2 = [
    WorkoutOfTheDay(name: "Treino 1", numberOfWorkouts: "10", color: .blue, workoutDuration: "1h", image: "")
]
