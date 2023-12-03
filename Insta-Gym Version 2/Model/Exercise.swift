//
//  AddNewTrainingModel.swift
//  Insta-Gym Version 2
//
//  Created by IFNMG
//
//Criação de Células de treino, adicionar novo treino
import SwiftUI

struct Exercise: Identifiable, Codable, Hashable { // Isso é o que retorna da API
    let bodyPart: String
    let equipment: String
    let gifUrl: String
    let id: String
    let name: String
    let target: String
}

var AddNewTrainingModelList: [Exercise] = [
    Exercise(bodyPart: "peito", equipment: "halter", gifUrl: "https://media.giphy.com/media/3o7TKCZdH9h5pWn2NO/giphy.gif", id: "1", name: "voador", target: "peito"),
    Exercise(bodyPart: "costas", equipment: "barra", gifUrl: "https://media.giphy.com/media/3o7TKCZdH9h5pWn2NO/giphy.gif", id: "2", name: "costas", target: "costas"),
    Exercise(bodyPart: "biceps", equipment: "halter", gifUrl: "https://media.giphy.com/media/3o7TKCZdH9h5pWn2NO/giphy.gif", id: "3", name: "biceps", target: "biceps"),
    Exercise(bodyPart: "perna", equipment: "barra", gifUrl: "https://media.giphy.com/media/3o7TKCZdH9h5pWn2NO/giphy.gif", id: "4", name: "perna", target: "perna"),
    

]

