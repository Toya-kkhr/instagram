//
//  AuthManager.swift
//  instagram
//
//  Created by 加古原　冬弥 on 2020/09/30.
//  Copyright © 2020 加古原　冬弥. All rights reserved.
//
import FirebaseDatabase
import FirebaseAuth

public class AuthManager {
    static let shared = AuthManager()
    
    //MARK: - public
    
    public func registerNewUser(username: String, email: String, password: String, completion: @escaping ((Bool) -> Void) ) {
        
        /*
         - Check if username is available
         - Check if email is available
         */
        DatabaseManager.shared.canCreateNewUser(with: email, username: username) { canCreate in
            if canCreate {
                /*
                 - Create acount
                 - insart acount to database
                 */
                Auth.auth().createUser(withEmail: email, password: password) { result, error in
                    guard error == nil, result != nil else {
                        // Firebase auth could not create account
                        completion(false)
                        return
                    }
                    //Insert into database
                    DatabaseManager.shared.insertNweUser(with: email, username: username) { inserted in
                        if inserted {
                            completion(true)
                            return
                        }
                        else{
                            // failed to insert to database
                            completion(false)
                            return
                            
                        }
                    }
                }
            }
            else {
                // either username or email does not exist
                completion(false)
            }
            
        }
        
        }
    
    public func loginUser(username: String?, email: String?, password: String, completion: @escaping (Bool) -> Void) {
        if let email = email {
            //email log in
            Auth.auth().signIn(withEmail: email, password: password) { authResult, Error in
                
                guard authResult != nil, Error == nil else {
                    completion(false)
                    return
                }
                completion(true)
            }
        }
            else if let username = username {
                //username log in
            print(username)
            
        }
    }
}
