//
//  Authentication.swift
//  InstaGym
//
//  Created by alexandre pereira on 21/11/23.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

protocol AuthenticationFormProtocol {
    var formIsValid: Bool {get}
}
@MainActor
class Authentication: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    init(){
        self.userSession = Auth.auth().currentUser
        Task{
            await fetchUser()
        }
        
    }
    func signIn(withEmail email:String, password:String) async throws{
        do{
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            await fetchUser()
        } catch{
            print("Debug: Failed to log in winth error \(error.localizedDescription)")
        }
    }
    
    func createdUser(withEmail email:String, password:String, fullname: String) async throws{
        do{
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            let user = User(id: result.user.uid, fullName: fullname, email: email, workouts: [], dietStats: MOCK_DIET_STATS, dietGoals: MOCK_DIET_GOALS)
             let encodeUser = try Firestore.Encoder().encode(user)
            try await Firestore.firestore().collection("users").document(user.id).setData(encodeUser)
        await fetchUser()
        }catch{
            print("DEBUG:  Failed to created user with error \(error.localizedDescription)")
        }
       
    }
    func singOut(){
        do{
            try Auth.auth().signOut()
            self.userSession = nil
            self.currentUser = nil
        }catch{
            print("DEBUG:  Failed to sign out with error \(error.localizedDescription)")

        }
    }
    
    func deleteAccount(){
        
    }
    
    func fetchUser() async{
        guard let uid = Auth.auth().currentUser?.uid else{ return}
        guard let snapshot = try? await Firestore.firestore().collection("users").document(uid).getDocument() else {return}
        self.currentUser = try? snapshot.data(as: User.self)
            
        }
    }

