//
//  home.swift
//  Insta-Gym Version 2
//
//  Created by Anne Karolinne
//

import SwiftUI

struct home: View{
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
                            workoutOfTheDayCard(training: index)
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
        }
    }
}

#Preview {
    home()
}

struct workoutOfTheDayCardAll: View{
    var training: WorkoutOfTheDay
    var body: some View {
        ZStack{

                
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
}
