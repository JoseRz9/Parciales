//
//  ContentView.swift
//  parcial3
//
//  Created by JOSE DAVID RAMIREZHERNANDEZ on 22/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var user:String=""
        @State var password:String=""
    @State private var showError: Bool = false
        var body: some View {
            VStack{
                ZStack( alignment: .top, content:{
                HStack() {
                Text("ETPS 4 ".uppercased())
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color("red_oscuro"))
                    .cornerRadius(10)
                    .shadow(radius: 10 )
                    .font(.title2)
                Text("PARCIAL 4".uppercased())
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color("red_oscuro"))
                    .cornerRadius(10)
                    .shadow(radius: 10 )
                    .font(.title2)
                }

                ZStack ( alignment: .bottom, content: {
                    Image("utec")
                        .resizable()
                        .scaledToFit()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .frame(width: 250, height: 250, alignment: .center)
                    Text("UTEC 🦅".uppercased())
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("red_oscuro"))
                        .cornerRadius(10)
                        .shadow(radius: 10 )
                        .font(.title2)
                    })
                })
               
                
                TextField("👤 Carnet ", text: $user)
                               .keyboardType(.numberPad) // Cambia a numberPad para que solo muestre números
                               .disableAutocorrection(true)
                               .padding(9)
                               .font(.headline)
                               .background(Color.gray.opacity(0.3))
                               .cornerRadius(6)
                               .padding(.horizontal,60)
                               .padding(.top,40)
                               .onChange(of: user) { value in
                                   if !value.allSatisfy({ $0.isNumber }) {
                                       // Si el valor no es un número, mostramos el error y reseteamos el valor.
                                       self.showError = true
                                       self.user = String(value.dropLast())
                                   }
                               }

                           if showError {
                               Text("Por favor ingrese solo números")
                                   .foregroundColor(.red)
                                   .onAppear(perform: {
                                       DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                           self.showError = false
                                       }
                                   })
                           }

                SecureField("🔑 Password",text:$password)
                    .keyboardType(.emailAddress)
                    .disableAutocorrection(true)
                    .padding(9)
                    .font(.headline)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(6)
                    .padding(.horizontal,60)
                    .padding(.top,10)
                    .onChange(of: user, perform: {
                        value in print("El valor cambiado es \(value)")
                    })
                
                Button(action:{
                    
                    print("*************************")
                    print("🧑‍💼: \(user)")
                    print("🔐: \(password)")
                    print("******************")
                }, label: {
                    Text("Ingresar".uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("red_oscuro"))
                        .cornerRadius(10)
                        .shadow(radius: 10)
                }).padding(.top,5)
            Spacer()

            }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
