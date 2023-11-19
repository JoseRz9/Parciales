//
//  proyectofirebaseApp.swift
//  proyectofirebase
//
//  Created by JOSE DAVID RAMIREZHERNANDEZ on 12/11/23.
//

import SwiftUI

@main
struct proyectofirebaseApp: App {
    
    // register app delegate for Firebase setup
     @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            //ContentView()
            //AuthView()
            LoginEmail()
        }
    }
}
