//
//  Header.swift
//  CloneFace
//
//  Created by JOSE DAVID RAMIREZHERNANDEZ on 29/10/23.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 100,height: 100, alignment: .center)
            Spacer()
            Image(systemName: "magnifyingglass")
                .font(.system(size: 18))
                .padding(8)
                .background(Color("azul"))
                .clipShape(Circle())
            
            Image(systemName: "message.fill")
                .font(.system(size: 18))
                .padding(8)
                .background(Color("azul"))
                .clipShape(Circle())
        }
        .padding(.horizontal)
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
