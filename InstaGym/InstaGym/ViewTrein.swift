//
//  ViewTrein.swift
//  InstaGym
//
//  Created by alexandre pereira on 12/10/23.
//

import SwiftUI

    
struct ViewTrein: View {


    var body: some View {
      
        
        ZStack{
         
            VStack(alignment: .leading, spacing: 20 ) {
               
                Text("InstaGym")
                  .font(
                    Font.custom("SF Pro", size: 34)
                      .weight(.bold)
                  )
                  .padding(.trailing,200)
                  .foregroundColor(.white)
                Text("Treino de hoje")
                  .font(Font.custom("SF Pro", size: 15))
                  .foregroundColor(.white)
                  .padding(.trailing)
                Spacer()
                    
            }
            HStack{
               
                ZStack{
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 361, height: 115)
                      .background(.blue)
                      .cornerRadius(16)
                    Text("Costas e Bicpes")
                        .font(Font.custom("Open Sans", size: 15))  .foregroundColor(.white)
                        .padding(.trailing,200)
                        .fontWeight(.bold)
                    Text("06 Exercícios,  Duração de 1h30")
                        .padding(.top,40)
                        .padding(.trailing,120)
                      .font(Font.custom("Open Sans", size: 13))
                      .foregroundColor(.white)
                      
                }
                .padding(.bottom,450)
          
             
               
            }
            VStack{
                Text("Todos os Treinos")
                    .font(Font.custom("Open Sans", size: 15))  .foregroundColor(.white)
                    .padding(.trailing,250)
                    .fontWeight(.bold)
            }
            .padding(.bottom,300)
           
            ScrollView{
                
          
            VStack{
                
                
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 361, height: 60)
                        .background(.blue)
                    
                    Image(teste.imageNAme)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .padding(.trailing,300)
                        .clipped()
                    Text(teste.name)
                        .font(Font.custom("Open Sans", size: 15))  .foregroundColor(.white)
                        .padding(.trailing,100)
                        .fontWeight(.bold)
                    Button{} label: {
                      Label("", systemImage: "icon")
                            .font(.title3)
                            .frame(maxWidth: .infinity)
                    }
                    .padding(.leading,300)
                    .foregroundColor(.white)
                    
                }
                
                .padding(.zero)
                .cornerRadius(10)
                
            }
            }
            .cornerRadius(10)
            .padding(.vertical, 30)
            .padding(.bottom, 90)
            .frame(width: 393, height: 332, alignment: .center)
            VStack{
            
                    Button("Modificar Treinos"){
                       
                        
                    }
                    
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .font(.title3)
                    .padding(.top,500)
                    .frame(maxWidth: .infinity)
                }

            
         
    }
        .background(.black)
 
        
    }
    
}

struct ViewTrein_Previews: PreviewProvider {
    static var previews: some View{
        ViewTrein()
    }
 
}

    
