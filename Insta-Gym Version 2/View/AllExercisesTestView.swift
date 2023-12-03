//
//  AllExercisesTestView.swift
//  Insta-Gym Version 2
//
//  Created by Paulo Filipe Moreira da Silva on 03/12/23.
//

import SwiftUI
import SDWebImageSwiftUI  // dependecia para gerar os gifs https://github.com/SDWebImage/SDWebImageSwiftUI.git


struct AllExercisesTestView: View {
    @State private var exercises: [Exercise] = []
    
    var body: some View {
        NavigationView {
            List(exercises) { exercise in
                VStack(alignment: .leading) {
                    AnimatedImage(url: URL(string: exercise.gifUrl)!)
                        .frame(width: 246, height: 246)
                    
                    Text(exercise.name)
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle("Exercises")
            .onAppear {
                // Chama a função para buscar todos os exercícios ao carregar a tela
                api.shared.fetchAllExercises { result in
                    switch result {
                    case .success(let exercises):
                        self.exercises = exercises
                    case .failure(let error):
                        print("Error fetching exercises: \(error)")
                    }
                }        }
        }
    }
}
        
#Preview {
    AllExercisesTestView()
}


