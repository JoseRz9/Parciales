//
//  AuthenticationSheetView.swift
//  proyectofirebase
//
//  Created by JOSE DAVID RAMIREZHERNANDEZ on 12/11/23.
//

import Foundation

enum AuthenticationSheetView:String, Identifiable {
    case registrar
    case login
    
    var id:String{
        return rawValue
    }
}
