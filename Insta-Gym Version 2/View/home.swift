//
//  home.swift
//  Insta-Gym Version 2
//
//  Created by IFNMG
//

import SwiftUI

struct home: View{
    
    @State private var tabSelection = 1 //Tab Bab
    
    var body: some View {
        ScrollView{
            VStack{
                //Header
                HStack{
                    Text("InstaGym")
                        .font(.system(size: 34))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.trailing)
                    
                    ZStack{
                        Color(red: 10/255, green: 132/255, blue: 255/255) // Define o fundo azul
                            .frame(width: 151, height: 43) // Define o tamanho do retângulo
                            .cornerRadius(9.5) // Define as bordas configuracao
                        
                        Image(systemName: "OffensiveCell")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .imageScale(.large)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 151, height: 43)
                        
                        Text("5 dias seguidos!")
                            .foregroundColor(.white)
                            .font(.system(size: 17))
                    }
                }
                HStack { //Treino do dia
                    Text("Treino de hoje")
                        .font(.system(size: 16))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.trailing)
                    
                    Text("Segunda, 3 de Julho")
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity, alignment: .leading)
                       // .padding(.trailing)
                }
                //Treino do dia
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(workoutOfTheDayList2, id:\.id) {index in
                            workoutOfTheDayCardCurrent(training: index)
                        }
                    }
                }
                //Header de todos os treinos
                HStack{
                    Text("Seus treinos")
                        .font(.system(size: 16))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.trailing)
                }
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(workoutOfTheDayList, id:\.id) {index in
                            workoutOfTheDayCardAll(training: index)
                        }
                    }
                }
                //Header de todos os treinos
                HStack{
                    Text("Sugestões de treinos")
                        .font(.system(size: 16))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.trailing)
                }
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(workoutOfTheDayList, id:\.id) {index in
                            workoutOfTheDayCard(training: index)
                        }
                    }
                }
              
            }
            .padding(30)
            
            //Tab Bar
            TabView(selection: $tabSelection) {
                Text("Tab Content 1")
                    .tag(1)
                
                Text("Tab Content 1")
                    .tag(2)
                
                Text("Tab Content 1")
                    .tag(3)
                
                Text("Tab Content 1")
                    .tag(4)
                
            } //Fim Tab Bar
            .overlay(alignment: .bottom){
                
            }
        }
    }
}

#Preview {
    home()
}

struct workoutOfTheDayCardCurrent: View{ //Chamada de treino do dia
    var training: WorkoutOfTheDay
    var body: some View {
        NavigationLink(destination: DescriptionExec()){
            
        }
        GeometryReader {  geometry in
            ZStack{
              //  Image("fithome") // Substitua "nomeDaSuaImagem" pelo nome real da sua imagem
                  //  .resizable()
                //    .scaledToFill() // Ajusta a escala para preencher completamente o espaço disponível
                  //  .frame(width: geometry.size.width, height: geometry.size.height)
                    //    .clipped()
                
                
                VStack(alignment: .leading){
                    Text("Costas e Bíceps")
                        .font(.title)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("| 06 Exercícios, Duração de 1h30") // Texto principal
                        .font(.body)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .bottom)
            }
        }
        .padding()
        .frame(width: 335,height: 173)
        .background(training.color.opacity(0.2))
        .cornerRadius(9.5)
    }
}
struct workoutOfTheDayCardAll: View{ //DescriptionExec()
    var training: WorkoutOfTheDay
    var body: some View {
        NavigationLink(destination: DescriptionExec()){
            
        }
        GeometryReader {  geometry in
            ZStack{
                VStack(alignment: .leading){
                    Text("Pernas e Inferiores")
                        .font(.title)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("| 06 Exercícios, Duração de 1h30") // Texto principal
                        .font(.body)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .bottom)
            }
        }
        .padding()
        .frame(width: 310,height: 173)
        .background(training.color.opacity(0.2))
        .cornerRadius(9.5)
    }
}
struct workoutOfTheDayCard: View{
    var training: WorkoutOfTheDay
    var body: some View {
        ZStack{
            
        }
        .padding()
        .frame(width: 310,height: 173)
        .background(training.color.opacity(0.2))
        .cornerRadius(9.5)
    }
    //Favoritar treinos
}
