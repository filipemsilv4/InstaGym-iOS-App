//Telade descricao do treino e visualizacao

import SwiftUI

struct DescriptionExec: View {
    var body: some View {

        ScrollView{
            
            ZStack {
                Image("fit")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                
                LinearGradient(gradient: Gradient(colors: [.clear, .clear, Color(.systemBackground)]), startPoint: .top, endPoint: .bottom)
                    .overlay(alignment: .bottom){
                        VStack(alignment: .leading) {
                            Text(description.titlePrin)
                                .font(.title2)
                                .fontWeight(.bold)
                            
                            Text(description.titleSeg)
                                .foregroundStyle(.blue)
                            //
                            
                        }
                        .frame(maxWidth: .infinity, alignment:.leading)
                        .padding(.horizontal)
                        
                        
                    }
            }
            ZStack{
                HStack{
                    //foguinho
                    Image(systemName: "flame.fill")
                        .resizable()
                        .frame(width: 19, height: 19)
                        .clipped()
                        .padding(.leading,10)
                        .foregroundColor(.green)
                    
                    Text(description.cal)
                        .foregroundColor(.white)
                    
                }
                .frame(width: 100,height: 40, alignment: .leading)
                .background(Color(red: 0.17, green: 0.17, blue:0.18))
                .cornerRadius(50)
                .padding(.trailing,270)
                HStack{
                    // coracao
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 19, height: 19)
                        .clipped()
                        .padding(.leading,10)
                        .foregroundColor(.red)
                    
                    Text(description.bpm)
                        .foregroundColor(.white)
                    
                }
                .frame(width: 100,height: 40, alignment: .leading)
                .background(Color(red: 0.17, green: 0.17, blue: 0.18))
                .cornerRadius(50)
                .padding(.leading,270)
                HStack{
                    //play
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 19, height: 19)
                        .clipped()
                        .padding(.leading,10)
                        .foregroundColor(.white)
                    
                    Text(description.min)
                        .foregroundColor(.white)
                    
                }
                .frame(width: 100,height: 40, alignment: .leading)
                .background(Color(red: 0.17, green: 0.17, blue: 0.18))
                .cornerRadius(50)
                .padding()
                
             
            }
            
            
            VStack(alignment: .leading, spacing: 8) {
                Text(description.description)
                
            }
            .frame(maxWidth: .infinity, alignment:.leading)
            .padding()
            
            ZStack{
                Image(description.videoList)
                    .resizable()
                    .frame(width: 100, height: 76)
                    .padding(.trailing,260)
                //descricao do video
                Text(description.textVideo)
                    .padding(.bottom,40)
                    .padding(.leading,80)
                    .font(Font.custom("Open Sans", size: 13))
                    .foregroundColor(.white)
                    .frame(width: 350, height: 250 )
                Text("0:30")
                    .padding(.trailing,85)
                    .font(Font.custom("Open Sans", size: 13))
                    .foregroundColor(.blue)
                    .frame(width: 350, height: 250 )
                
            }
            
            .frame(width: 345, height: 70)
            .background(.gray)
//            .foregroundColor(.black)
            .cornerRadius(12)
        }
        .overlay(alignment: .bottom ){
            HStack{
                Button{
                    
                }label: {
                    ZStack{
                        Capsule()
                        Text("Iniciar Treino")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }
                    
                }
                
                
                
            }
            .frame(height:50)
            .padding()
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct DescriptionExec_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionExec()
    }
}

