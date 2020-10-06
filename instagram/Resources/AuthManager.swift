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
    
    public func registerNewUser(username: String, email: String, password: String) {
        
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
