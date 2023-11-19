//
//  ContentView.swift
//  parcial4
//
//  Created by JOSE DAVID RAMIREZHERNANDEZ on 19/11/23.
//

import SwiftUI

struct ContentView: View {
    @State var busqueda:String=""
    @State private var showError: Bool = false
           var body: some View {
               VStack{
                   ZStack( alignment: .top, content:{

                   ZStack ( alignment: .bottom, content: {
                       Image("logo")
                           .resizable()
                           .scaledToFit()
                           .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                           .frame(width: 200, height: 200, alignment: .center)
                       Text("".uppercased())
                           .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                           .foregroundColor(.white)
                           .padding()
                           .background(Color("red_oscuro"))
                           .cornerRadius(10)
                           .shadow(radius: 10 )
                           .font(.title2)
                       })
                   })
                  
                   TextField("🔎 Busca tu combo ", text: $busqueda)
                                  .keyboardType(.numberPad) // Cambia a numberPad para que solo muestre números
                                  .disableAutocorrection(true)
                                  .padding(9)
                                  .font(.headline)
                                  .background(Color.gray.opacity(0.3))
                                  .cornerRadius(15)
                                  .padding(.horizontal,60)
                                  .padding(.top,25)
                                  .onChange(of: busqueda) { value in
                                      //validar si busca
                                  }
                   Text("Ventas".uppercased())
                       .frame(maxWidth: .infinity, alignment: .leading)
                       .fontWeight(.bold)
                       .foregroundColor(.black)
                       .padding(9)
                       .padding(.top,50)
                   
                   HStack{
                       ZStack{
                           Rectangle()
                               .frame(width: 75, height: 75)
                               .foregroundColor(Color.white)
                               .border(Color.black, width: 2)
                               .cornerRadius(25)
                               .opacity(0.8)
                           VStack{
                               Image(systemName: "house").font(.system(size: 25))
                                   .foregroundColor(.black)
                                   .padding(8)
                               Text("Hamburguesa")
                                                   .font(.system(size: 9, weight:.semibold))
                           }
                           
                       }
                       
                       ZStack{
                           Rectangle()
                               .frame(width: 75, height: 75)
                               .foregroundColor(Color.white)
                               .border(Color.black, width: 2)
                               .cornerRadius(25)
                               .opacity(0.8)
                           VStack{
                               Image(systemName: "house").font(.system(size: 25))
                                   .foregroundColor(.black)
                                   .padding(8)
                               Text("Nachos")
                                                   .font(.system(size: 9, weight:.semibold))
                           }
                       }
                       
                       ZStack{
                           Rectangle()
                               .frame(width: 75, height: 75)
                               .foregroundColor(Color.white)
                               .border(Color.black, width: 2)
                               .cornerRadius(35)
                               .opacity(0.8)
                           VStack{
                               Image(systemName: "house").font(.system(size: 25))
                                   .foregroundColor(.black)
                                   .padding(8)
                               Text("Tortas")
                                                   .font(.system(size: 9, weight:.semibold))
                           }
                       }
                       ZStack{
                           Rectangle()
                               .frame(width: 75, height: 75)
                               .foregroundColor(Color.white)
                               .border(Color.black, width: 2)
                               .cornerRadius(25)
                               .opacity(0.8)
                           VStack{
                               Image(systemName: "house").font(.system(size: 25))
                                   .foregroundColor(.black)
                                   .padding(8)
                               Text("Tacos")
                                                   .font(.system(size: 9, weight:.semibold))
                           }
                       }
                   }
               Spacer()

               }
               Text("Burgers".uppercased())
                   .frame(maxWidth: .infinity, alignment: .leading)
                   .fontWeight(.bold)
                   .foregroundColor(.black)
                   .padding(9)
                   .padding(.top,50)

       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
