//
//  AuthViewModel.swift
//  proyectofirebase
//
//  Created by JOSE DAVID RAMIREZHERNANDEZ on 12/11/23.
//

import Foundation



final class AuthViewModel: ObservableObject {
    @Published var user: User?
    @Published var messageError: String?
    private let authenticationRepository: AuthRepository
    init(authenticationRepository: AuthRepository = AuthRepository()) {
        self.authenticationRepository = authenticationRepository
        
    }

    func createNewUser(email: String, password: String) {
        authenticationRepository.createNewUser(email: email, password: password){
            [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let newUser): self.user = newUser
            case .failure(let error):
            self.messageError = error.localizedDescription

            }

        }

    }
}

