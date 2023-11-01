import SwiftUI

struct DescriptionExec: View {
    var body: some View {
        VStack{
            
        
        ZStack {
            Image("fitnes")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 418, height: 500)
                .clipped()
                .padding(.bottom, 550)
    
                
           
            ZStack {
                Text(description.titlePrin)
                    .font(Font.custom("Open Sans", size: 20))
                    .foregroundColor(.white)
                    .padding(.trailing,180)
                    .padding(.bottom,500)
//                    .frame(width: 418, height: 20)

                Text(description.titleSeg)
                    .font(Font.custom("Open Sans", size: 10))
                    .foregroundColor(.blue)
                    .padding(.trailing,260)
                    .padding(.bottom,450)
                HStack{
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
                .padding(.bottom,300)
                .padding(.trailing,270)
                HStack{
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
                .padding(.bottom,300)
                .padding(.leading,270)
                HStack{
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
                .background(Color(red: 0.17, green: 0.17, blue: 0.18))
                .cornerRadius(50)
                .padding(.bottom,300)
                .padding()
                Text(description.description)
                    .font(Font.custom("Open Sans", size: 15))
                    .foregroundColor(.white)
                    .padding(.bottom,120)
                    .frame(width: 350, height: 250 )
                
                        ZStack{
                            
                            Image(description.videoList)
                                .resizable()
                                .frame(width: 100, height: 76)
                                .padding(.trailing,260)
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
                        
                        .frame(width: 345, height: 76)
                        .background(Color.gray)
                        .padding(.top,70)
                        .cornerRadius(12)
                    
             
            
         
            }
            .frame(width: 400, height: 600)
            .background(Color.black)
            .cornerRadius(50) // Adicione o cornerRadius aqui para arredondar
            .padding(.top, 400)
        }
        
            
        }
    }
}

struct DescriptionExec_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionExec()
    }
}

