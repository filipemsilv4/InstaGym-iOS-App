//
//  TypeTraining.swift
//  Insta-Gym Version 2
//
//  Created by IFNMG
//

import SwiftUI

struct TypeTraining: Identifiable, Hashable {
    var id: UUID = .init()
    var title: String
}

var typeTrainingList: [TypeTraining] = [
    TypeTraining(title:"Todos"),
    TypeTraining(title:"Braços e peito "),
    TypeTraining(title:"Pernas e Gluteos"),
    TypeTraining(title:"Costas e Ombros"),
    TypeTraining(title:"Abdômen")
]
