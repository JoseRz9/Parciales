//
//  LoginEmail.swift
//  proyectofirebase
//
//  Created by JOSE DAVID RAMIREZHERNANDEZ on 12/11/23.
//

import SwiftUI

struct LoginEmail: View {
    @State var txtCorreo:String = ""
    @State var txtPass:String = ""
    
    var body: some View {
        VStack{
            Group{
                Text("Bienvenidos a ETPS4")
                    .bold()
                    .shadow(radius: 10)
                    .font(.largeTitle)
                Text("Integracion de Firebase")
                    .bold()
            }
            .padding(.horizontal,8)
            .multilineTextAlignment(.center)
            
            Group{
                Text("Para el ingeso es necesario Loguearse")
                    .multilineTextAlignment(.center)
                    .padding(.top,2)
                    .padding(.bottom,32)
                TextField("Ingresar Correo",text: $txtCorreo)
                    .border(Color.black)
                TextField("Ingresar Contraseña",text: $txtPass)
                    .border(Color.black)
                
                Button("Login"){
                    print("Login")
                }
            }
            .padding(.top,18)
            .padding(.horizontal,30)
        }
    }
}

struct LoginEmail_Previews: PreviewProvider {
    static var previews: some View {
        LoginEmail()
    }
}
