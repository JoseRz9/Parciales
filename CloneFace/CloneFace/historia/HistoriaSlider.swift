//
//  HistoriaSlider.swift
//  CloneFace
//
//  Created by JOSE DAVID RAMIREZHERNANDEZ on 29/10/23.
//

import SwiftUI
let nombres = ["Pancho Villa", "El Soldado"]

struct HistoriaSlider: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack{
                MiHistoria()
                ForEach(1..<3){
                    i in
                    Historias(imagenNombre: "historias\(i)", perfilFoto: "perfiles\(i)", titulo: nombres[i-1])
                        .foregroundColor(.white)
                        .shadow(radius: 10)
                }
                
            }
        }
    }
}

struct HistoriaSlider_Previews: PreviewProvider {
    static var previews: some View {
        HistoriaSlider()
    }
}
