//
//  AuthFireBaseDataSource.swift
//  proyectofirebase
//
//  Created by JOSE DAVID RAMIREZHERNANDEZ on 12/11/23.
//

import Foundation
import FirebaseAuth

final class AuthFireBaseDataSorce{

    struct User {
        let email:String
    }
    func createNewUser(email: String, password: String, completionBlock: @escaping (Result<User, Error>) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { authDataResult, error in
            if let error = error {
                print("Error al crear el usuario \(error.localizedDescription)")
                completionBlock(.failure(error))
                return
            }

            let email = authDataResult?.user.email ?? "No email"
            print("Nuevo usuario creado con info \(email)")
            completionBlock(.success(.init(email: email)))
        }

}
}
