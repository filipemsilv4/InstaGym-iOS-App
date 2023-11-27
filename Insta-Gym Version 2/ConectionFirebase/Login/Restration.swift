//
//  RegistrationView.swift
//  Created by alexandre pereira on 26/10/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var corfirmpassword = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: Authentication
    
    var body: some View {
        VStack{
            Text("InstaGym")
              .font(
                Font.custom("Inter", size: 60)
                  .weight(.bold)
              )
              .kerning(0.6)
              .multilineTextAlignment(.center)
              .foregroundColor(Color(red: 0.04, green: 0.52, blue: 1))
              .frame(width: 375, height: 100, alignment: .top)
            
            
            
            VStack (spacing: 24){
                InputView(text: $email, title: "Email ",
                          placeholder: "nome@email.com")
                .autocapitalization(.none)
                
                InputView(text: $fullname, title: "Nome Completo",
                          placeholder: "Seu nome")
                .autocapitalization(.none)
                
                InputView(text: $password, title: "Senha",
                          placeholder: "Digite sua senha",
                          isSecureField: true)
                ZStack(alignment: .trailing){
                    InputView(text: $corfirmpassword, title: "Confirmaçao",
                              placeholder: "Confirme senha",
                              isSecureField: true)
                    
                    if !password.isEmpty && !corfirmpassword.isEmpty{
                        if password == corfirmpassword{
                            Image(systemName: "checkmark.circle.fill")
                                .imageScale(.large)
                                .fontWidth(.compressed)
                                .foregroundColor(Color(.systemGreen))
                        }
                    }else{
                        Image(systemName: "xmark.circle.fill")
                            .imageScale(.large)
                            .fontWidth(.compressed)
                            .foregroundColor(Color(.systemRed))
                    }
                }
            
            }
            .padding(.horizontal)
            .padding(.top, 12)
            // sign up button
            Button {
                Task{
                    try await viewModel.createdUser(withEmail: email, password: password, fullname: fullname)
                }
               
            } label: {
                HStack{
                    Text("Criar Conta")
                        .fontWeight(.semibold)
                    Image(systemName: "arrow.right")
                }
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width - 32,height: 48 )
            }
            .background(Color(.systemBlue))
            .disabled(!formIsValid)
            .opacity(formIsValid ? 1.0 : 0.5)
            .cornerRadius(10)
            .padding(.top,24)
            
            Spacer()
            
            Button{dismiss()
            }label: {
                HStack{
                    Text("Ja tenho conta!")
                    Text("Login")
                        .fontWeight(.bold)
                    
                }
                
                .font(.system(size: 14))
            }
        }
    }
}

extension RegistrationView: AuthenticationFormProtocol{
    var formIsValid: Bool {
        return !email.isEmpty
        && email.contains("@")
        && !password.isEmpty
        && password.count > 5
        && corfirmpassword == password
        && !fullname.isEmpty
    }
}
#Preview {
    RegistrationView()
}
