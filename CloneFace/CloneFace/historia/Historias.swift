//
//  Historias.swift
//  CloneFace
//
//  Created by JOSE DAVID RAMIREZHERNANDEZ on 29/10/23.
//

import SwiftUI

struct Historias: View {
    let imagenNombre: String
    let perfilFoto: String
    let titulo: String
    @State var  scale:CGFloat=1.0
    
    var body: some View {
        ZStack{
            Image(imagenNombre)
                .resizable()
                .frame(width: 100, height: 170)
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            VStack(alignment: .leading, spacing: 100){
                Image(perfilFoto)
                    .resizable()
                    .frame(width: 30, height: 35)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color(.blue), lineWidth: 2))
                
                Text(titulo)
                    .font(.system(size: 12, weight: .semibold))
                    //.foregroundColor(.white)
            }
            .padding(.horizontal, -40)
        }
    }
}

struct Historias_Previews: PreviewProvider {
    static var previews: some View {
        Historias(imagenNombre:"historia1",perfilFoto:"perfil2", titulo:"Pancho Villa")
            .foregroundColor(.white)
            .shadow(radius: 10)
    }
}
