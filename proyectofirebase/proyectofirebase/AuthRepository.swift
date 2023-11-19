//
//  AuthRepository.swift
//  proyectofirebase
//
//  Created by JOSE DAVID RAMIREZHERNANDEZ on 12/11/23.
//

import Foundation

final class AuthRepository {
    private let authenticationFirebaseDatasource: AuthFireBaseDataSorce

    init(authenticationFirebaseDatasource: AuthFireBaseDataSorce = AuthFireBaseDataSorce()) {
        self.authenticationFirebaseDatasource = authenticationFirebaseDatasource
    }

    func createNewUser(email: String, password: String, completionBlock: @escaping (Result<User, Error>) -> Void) {
        authenticationFirebaseDatasource.createNewUser(email: email,password: password,completionBlock: completionBlock)
    }
}
