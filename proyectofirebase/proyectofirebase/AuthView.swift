//
//  AuthView.swift
//  proyectofirebase
//
//  Created by JOSE DAVID RAMIREZHERNANDEZ on 12/11/23.
//

import SwiftUI

struct AuthView: View {
    @ObservedObject var authViewModel : AuthViewModel
    @State private var hojaAuthViewModel: AuthenticationSheetView?
    
    var body: some View {
        VStack{
            Circle()
                .frame(width: 100, height: 100)
            
            HStack{
                Button("✉️Ingresar con Email"){
                    print("Ingreso")
                }.foregroundColor(.gray)
                .padding(.top,6)
            }.padding(.top,20)
            Spacer()
            
            HStack{
                Button{
                    hojaAuthViewModel = .registrar
                }
                label:{
                    Text("No tiene cuenta")
                    Spacer()
                    Text("Registrarse").underline()
                }
            }.padding([.bottom, .horizontal,],50)
            
        }
        .sheet(item: $authViewModel){
            switch hoja{
            case .registrar:
                Registrarse(authViewModel: authViewModel)
            case .login:
                LoginEmail()
            }
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
