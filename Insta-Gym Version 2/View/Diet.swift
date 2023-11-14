//
//  Diet.swift
//  InstaGym MinhasTelas
//
//  Created by Paulo Filipe Moreira da Silva on 13/11/23.
//

import SwiftUI

struct Diet: View {
    var body: some View {
        ScrollView {
            //Header
            HStack {
                Text("InstaGym")
                    .font(.system(size: 34))
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.trailing)
                
                
            }.padding()
            
            // Botão azul de uma borda a outra da tela, "Registrar refeição"
            Button(action: {
                print("Registrar refeição")
            }) {
                Text("Registrar refeição")
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(12)
            }.padding(.horizontal)
            
            // Bloquinhos de gráfico
            VStack {
                graphCardWide(color: Color.blue, value: 3000, percentage: 100, label: "Calorias", labelAbrev: "kcal")
                HStack {
                    graphCardRegular(color: Color.green, value: 86, percentage: 70, label: "Proteínas", labelAbrev: "g")
                    graphCardRegular(color: Color.red, value: 199, percentage: 90, label: "Carboidratos", labelAbrev: "g")
                }
            }
        }
    }
}

// Bloquinhos de gráfico quadrados, cabem 2 lado a lado na tela
struct graphCardRegular: View {
    var color: Color
    var value: Int
    var percentage: Int
    var label: String
    var labelAbrev: String
    
    var body: some View {
        VStack {
            Text("\(label)")
                .font(.system(size: 20))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            // Ring e valores dentro dele
            ZStack {
                Ring(lineWidth: 20,
                     backgroundColor: color,
                     foregroundColor: color.opacity(0.2),
                     percentage: Double(percentage))
                
                // Stack de valores dentro do ring
                VStack {
                    Text("\(value)\(labelAbrev)")
                        .font(.system(size: 18))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    Text("\(percentage)%")
                        .font(.system(size: 32))
                        .bold()
                        .frame(maxWidth: .infinity)
                }
            }
            .padding(8)
            .frame(alignment: .leading)
        
        }
        .padding()
        .frame(width: 175, height: 200)
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }

}


// Bloquinhos de gráfico retangulares, ocupa o espaço de 2 graphCardRegular
struct graphCardWide: View {
    var color: Color
    var value: Int
    var percentage: Int
    var label: String
    var labelAbrev: String
    
    var body: some View {
        HStack {
            // Valores e label do lado esquerdo
            VStack {
                Text("\(label)")
                    .font(.system(size: 20))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                Text("\(value)")
                    .font(.system(size: 52))
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Text("\(labelAbrev)")
                    .font(.system(size: 30))
                    .padding(.top, -48)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Spacer()
            }
            // Ring e porcentagem do lado direito
            ZStack {
                Ring(lineWidth: 20,
                     backgroundColor: color,
                     foregroundColor: color.opacity(0.2),
                     percentage: Double(percentage))
                
                Text("\(percentage)%")
                    .font(.system(size: 32))
                    .bold()
                    .frame(maxWidth: .infinity)
            }
            .padding(8)
            .frame(alignment: .leading)
        
        }
        .padding()
        .frame(width: 360, height: 170)
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }
}

#Preview {
    Diet()
}
