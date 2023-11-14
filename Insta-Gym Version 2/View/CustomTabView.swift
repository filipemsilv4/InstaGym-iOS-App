//
//  CustomTabView.swift
//  Insta-Gym Version 2
//
//  Created by IFNMG
//

import SwiftUI

struct CustomTabView: View {
    @Binding var tabSelection: Int
    @Namespace private var animationNamespace
    
    let tabBarItems: [(image: String, title: String)] = [
        ("dumbbell","Treino"),
        ("chart.bar","Progresso"),
        ("medal","Conquistas"),
        ("person","Perfil")
    ]
    var body: some View {
        ZStack{
            Rectangle()
                .frame(height: 80)
                .cornerRadius(10)
                .foregroundColor(Color(.secondarySystemBackground))
                .shadow(radius: 0.1)
            
            HStack {
                ForEach(0..<4) { index in
                    Button{
                        tabSelection = index + 1
                    } label: {
                        VStack(spacing: 8) {
                            Spacer()
                            
                            Image(systemName: tabBarItems[index].image)
                            
                            Text(tabBarItems[index].title)
                            
                            if index + 1 == tabSelection {
                                Rectangle()
                                    .frame(height: 5)
                                    .cornerRadius(10)
                                    .foregroundColor(.blue)
                                    .matchedGeometryEffect(id: "SelecedTabId", in: animationNamespace)
                                    .offset(y: 3)
                            } else {
                                Rectangle()
                                    .frame(height: 5)
                                    .cornerRadius(10)
                                    .foregroundColor(.clear)
                                    .offset(y: 3)
                            }
                        }
                        .foregroundColor(index + 1 == tabSelection ? . blue : .black)
                    }
                }
            }
            .frame(height: 80)
            .clipShape(Rectangle())
        }
        .padding(.horizontal)
    }
}

#Preview {
    CustomTabView(tabSelection: .constant(1))
        .previewLayout(.sizeThatFits)
        .padding(.vertical)
        
}
