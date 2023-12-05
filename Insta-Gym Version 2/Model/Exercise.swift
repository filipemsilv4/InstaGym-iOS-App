//
//  AddNewTrainingModel.swift
//  Insta-Gym Version 2
//
//  Created by IFNMG
//
//Criação de Células de treino, adicionar novo treino
import SwiftUI

struct Exercise: Identifiable, Codable, Hashable { 
    let bodyPart: String
    let equipment: String
    let gifUrl: String
    let id: String
    let name: String
    let target: String
}

let MOCK_EXERCISES = [
    Exercise(bodyPart: "Chest", equipment: "Barbell", gifUrl: "https://media.giphy.com/media/3o7TKDh8Z5U9p0jW2Q/giphy.gif", id: "-1", name: "Test1", target: "Pectoralis Major"),
    Exercise(bodyPart: "Back", equipment: "Dumbbell", gifUrl: "https://media.giphy.com/media/3o7TKDh8Z5U9p0jW2Q/giphy.gif", id: "-2", name: "Test2", target: "Latissimus Dorsi"),
    Exercise(bodyPart: "Shoulders", equipment: "Machine", gifUrl: "https://media.giphy.com/media/3o7TKDh8Z5U9p0jW2Q/giphy.gif", id: "-3", name: "Test3", target: "Deltoid"),
    Exercise(bodyPart: "Arms", equipment: "Barbell", gifUrl: "https://media.giphy.com/media/3o7TKDh8Z5U9p0jW2Q/giphy.gif", id: "-4", name: "Test4", target: "Biceps")
]
