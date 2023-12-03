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

