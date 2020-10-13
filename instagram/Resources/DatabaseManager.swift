//
//  DatabaseManager.swift
//  instagram
//
//  Created by 加古原　冬弥 on 2020/09/30.
//  Copyright © 2020 加古原　冬弥. All rights reserved.
//

import FirebaseDatabase

public class DatabaseManager {
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    
    //MARK: - public
    ///Check if username and email is available
    /// - Parameters
    ///   - email: String representing email
    ///   - username: String representing username
    public func canCreateNewUser(with email: String, username: String, completion: (Bool) -> Void) {
        completion(true)
    }
    ///Insert new data to database
    /// - Parameters
    ///   - email: String representing email
    ///   - username: String representing username
    ///   - completion Async callback for result it database entry succeded
    
    public func insertNweUser(with email: String, username: String, completion: @escaping (Bool) -> Void) {
        let key = email.safeDatabaseKey()
        print(key)
        
        database.child(key).setValue(["username": username]) { error, _ in
            if error == nil {
                //succe ded
                completion(true)
                return
            }
            else {
                //failed
                completion(false)
                return
            }
        }
    }
}

