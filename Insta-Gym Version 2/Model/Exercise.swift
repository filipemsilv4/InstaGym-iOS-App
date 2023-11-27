//
//  exercise.swift
//  testeGymApi
//
//  Created by alexandre pereira on 22/11/23.
//

import Foundation
struct Exercise: Identifiable, Codable, Hashable {
    let bodyPart: String
    let equipment: String
    let gifUrl: String
    let id: String
    let name: String
    let target: String
}
