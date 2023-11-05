//
//  AddNewTrainingModel.swift
//  Insta-Gym Version 2
//
//  Created by Anne Karolinne 
//
//Criação de Células de treino, adicionar novo treino
import SwiftUI

struct AddNewTrainingModel: Identifiable, Hashable {
    var id: UUID = .init()
    var image: String
    var title: String
    var icon: String
    var color: Color
}

var AddNewTrainingModelList: [AddNewTrainingModel] = [
    AddNewTrainingModel(image:"",title:"voador",icon:"plus.circle",color:Color.blue),
    AddNewTrainingModel(image:"",title:"triceps",icon:"plus.circle",color:Color.blue),
    AddNewTrainingModel(image:"",title:"costas pequena",icon:"plus.circle",color:Color.blue),
    AddNewTrainingModel(image:"",title:"teste1",icon:"plus.circle",color:Color.blue),
    AddNewTrainingModel(image:"",title:"teste2",icon:"plus.circle",color:Color.blue),
    AddNewTrainingModel(image:"",title:"teste3",icon:"plus.circle",color:Color.blue)

]

