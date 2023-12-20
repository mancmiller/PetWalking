//
//  AuthenticationService.swift
//  PetWalking
//
//  Created by Muslim on 20.12.2023.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class AuthenticationService {
    public static let shared = AuthenticationService()
    
    private init() {}
    
    
    /// A method to register the user
    /// - Parameters:
    ///   - userRequest: user's information (email, password)
    ///   - completion: completion block with two values
    ///   - Bool: wasRegistered - determines whether the user was registered and saved in the database correctly
    ///   - Error?: an optional error if Firebase provides one
    public func registerUser(with userRequest: RegisterUserRequest, completion: @escaping (Bool, Error?) -> Void ) {
        let email = userRequest.email
        let password = userRequest.password
        
        Auth.auth().createUser(withEmail: email, password: password) { result,
            error in
            if let error = error {
                completion(false, error)
                return
            }
            guard let resultUser = result?.user else {
                completion(false, nil)
                return
            }
            
            let db = Firestore.firestore()
            db.collection("users")
                .document(resultUser.uid)
                .setData([
                    "email": email
                ]) { error in
                    if let error = error {
                        completion(false, error)
                        return
                    }
                    completion(true, nil)
                }
        }
    }
}
