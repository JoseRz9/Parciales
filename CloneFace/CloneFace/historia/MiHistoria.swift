//
//  MiHistoria.swift
//  CloneFace
//
//  Created by JOSE DAVID RAMIREZHERNANDEZ on 29/10/23.
//

import SwiftUI

struct MiHistoria: View {
    var body: some View {
        ZStack(alignment: .top){
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 100, height: 170)
            
            ZStack(alignment:.bottom){
                Image("pancho")
                    .resizable()
                    .frame(width: 100, height: 110)
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                VStack(spacing:0){
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color.blue)
                        .clipShape(Circle())
                        .font(.system(size: 20, weight: .bold))
                        .overlay(Circle()
                            .stroke(Color.blue, lineWidth: 3))
                        .shadow(radius: 10)
                    
                    Group{
                        Text("Agregar")
                            .foregroundColor(.white)
                            .shadow(radius: 25)
                        
                        Text("Historia")
                            .foregroundColor(.white)
                            .shadow(radius: 25)
                    }
                    .font(.system(size: 12, weight: .semibold))
                }
                .offset(y:45)
            }
        }
    }
}

struct MiHistoria_Previews: PreviewProvider {
    static var previews: some View {
        MiHistoria()
    }
}
