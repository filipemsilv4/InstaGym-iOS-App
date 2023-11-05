//
//  AddNewTraining.swift
//  Insta-Gym Version 2
//
//  Created by Anne Karolinne
//

import SwiftUI

struct AddNewTraining: View {
    // Type Training List
    @State var selectedTypeTraining = ""
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        ScrollView {
            VStack {
                // Header
                HStack {
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .imageScale(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                            .padding()
                            .frame(width: 30,height: 30)
                            .overlay(RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4))
                    }
                    
                    Text("Adicionar Exercício")
                        .font(.system(size: 20))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.trailing)
                    Spacer()
                }
                
                typeTrainingListView // Chamada dos filtros de treinos na preview
                CardlistAddTraining//Chamada das celulas de treino na preview
            }
        }
        .padding(15)
    }
    
    // Lista de filtragem de treinos, botoes de selecao
    var typeTrainingListView: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(typeTrainingList, id: \.id) { index in
                        Button(action: {
                            selectedTypeTraining = index.title
                        }) {
                            HStack {
                                Text(index.title)
                            }
                            .padding()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .background(selectedTypeTraining == index.title ? Color.black : Color.blue.opacity(0.7))
                            .cornerRadius(10)
                        }
                    }
                }
                .padding()
            }
        }
    }
    //Células dos exercicios, adicionar novo treino
    var CardlistAddTraining: some View {
        NavigationView{
            ScrollView{
                HStack{
                    ScrollView(.vertical, showsIndicators: false){
                        VStack{
                            ForEach(AddNewTrainingModelList, id: \.id) { trainingAdd in
                                CardTrainingAdd(trainingAdd: trainingAdd)
                            }
                        }
                        .padding()
                    }
                }
            }
        }
        
    }
    
    // Parte das Células de treino
    struct CardTrainingAdd: View {
        var trainingAdd: AddNewTrainingModel
        
        var body: some View {
            ZStack {
                //Fundo da célula
                RoundedRectangle(cornerRadius: 9.5)
                    .fill(trainingAdd.color.opacity(0.2))
                // Conteúdo da célula de treino
                HStack{
                    Image("treino de alguma coisa")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .imageScale(.large)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80, height: 50)
                    
                    Text(trainingAdd.title)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Button(action:{
                        
                    }){
                        HStack{
                            Image(systemName: "plus.circle")
                        }
                        .padding(8)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    }
                }
            }
            .padding()
            .frame(width: 350, height: 110)
            .background(trainingAdd.color.opacity(0.2))
            .cornerRadius(9.5)
        }
    }
    
   
}

struct AddNewTraining_Previews: PreviewProvider {
    static var previews: some View {
        AddNewTraining()
    }
}
