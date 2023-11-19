//
//  CrearPost.swift
//  CloneFace
//
//  Created by JOSE DAVID RAMIREZHERNANDEZ on 29/10/23.
//

import SwiftUI

struct CrearPost: View {
    var body: some View {
        VStack{
            HStack{
                Image("pancho")
                    .resizable()
                    //.scaledToFit()
                    .frame(width: 50, height: 60)
                    .clipShape(Circle())
                Text("¿Que deseas panchito?")
                Spacer()
            }.padding(.horizontal)
            
            Rectangle()
                .frame(width: UIScreen.main.bounds.width, height: 1)
                .foregroundColor(Color("azul"))
            HStack{
                HStack{
                    Spacer()
                    HStack{
                        Image(systemName: "video.fill")
                            .foregroundColor(.red)
                        Text("Live")
                    }
                    Spacer()
                }
                
                Rectangle()
                    .frame(width: 1, height: 20)
                    .foregroundColor(.blue)
                Group{
                    HStack{
                        Spacer()
                        HStack{
                            Image(systemName: "photo")
                                .foregroundColor(.green)
                            Text("Fotos")
                        }
                        Spacer()
                    }
                }
                
                Rectangle()
                    .frame(width: 1, height: 20)
                    .foregroundColor(.blue)
                Group{
                    HStack{
                        Spacer()
                        HStack{
                            Image(systemName: "video.fill")
                                .foregroundColor(.purple)
                            Text("Room")
                        }
                        Spacer()
                    }
                    .font(.system(size: 14, weight: .semibold))
                }
            }
        }
    }
}

struct CrearPost_Previews: PreviewProvider {
    static var previews: some View {
        CrearPost()
    }
}
