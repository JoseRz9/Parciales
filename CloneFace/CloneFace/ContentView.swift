//
//  ContentView.swift
//  CloneFace
//
//  Created by JOSE DAVID RAMIREZHERNANDEZ on 29/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false){
                Header()
                CrearPost()
                HistoriaSlider()
            }
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
