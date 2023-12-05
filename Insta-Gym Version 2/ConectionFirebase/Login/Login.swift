//
//  LoginUIView.swift
//  SwiftUIAuthTutorial
//
//  Created by alexandre pereira on 25/10/23.
//

import SwiftUI

struct LoginUIView: View {
    @State private var email = ""
    @State private var password  = ""
    @EnvironmentObject var viewModel: Authentication
    @State private var isAlert = false

    var body: some View {
        NavigationStack{
            ZStack(alignment: .top){
                // Aqui está a imagem que será exibida acima do título
                    Image("manfit") 
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 480, height: 180) // Ajuste o tamanho conforme necessário
                        .blur(radius: 1.5) // nivel de desfoque
            }
            
            VStack{
                // image
                Spacer().frame(height: 80)
                
                HStack {
                       Text("InstaGym")
                           .font(
                               Font.custom("Inter", size: 60)
                                   .weight(.bold)
                           )
                           .kerning(0.6)
                           .multilineTextAlignment(.center)
                           .foregroundColor(Color(red: 0.04, green: 0.52, blue: 1))
                           .frame(height: 100, alignment: .top)
                       
                   }
                // For fields
                VStack (spacing: 24){
                    InputView(text: $email, title: "Email ",
                              placeholder: "nome@email.com")
                    .autocapitalization(.none)
                    
                    InputView(text: $password, title: "Senha",
                              placeholder: "Digite senha",
                              isSecureField: true)
                    
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                // sign up button
                Button {
                   
                    Task{
                        isAlert.toggle()
                        try await viewModel.signIn(withEmail: email, password: password)
                    }
                    
                } label: {
                    HStack{
                        Text("Login")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32,height: 48 )
                }
                .alert(isPresented: $isAlert, content: {
                    Alert(title: Text("Login Efetuado"), dismissButton: Alert.Button.cancel(Text("Ok"),action: {
                        print("done")
                    }))
                })
                .background(Color(.systemBlue))
                .disabled(!formIsValid)
                .opacity(formIsValid ? 1.0 : 0.5)
                .cornerRadius(10)
                .padding(.top,24)
                
                Spacer()
                
                // sinf in button
                NavigationLink{
                RegistrationView()
                        .navigationBarBackButtonHidden(true)
                    
                }label: {
                    HStack{
                        Text("Não tem conta?")
                        Text("Crie Agora ")
                            .fontWeight(.semibold)
                        
                    }
                    
                    .font(.system(size: 14))
                }
            }
        }
    }
}

extension LoginUIView: AuthenticationFormProtocol{
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
    }
    
    
}
#Preview {
    LoginUIView()
}
