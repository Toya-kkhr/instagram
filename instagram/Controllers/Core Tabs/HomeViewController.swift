//
//  ViewController.swift
//  instagram
//
//  Created by 加古原　冬弥 on 2020/09/25.
//  Copyright © 2020 加古原　冬弥. All rights reserved.
//

import Firebase
import FirebaseAuth
import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        handleNotAuthenticated()
        
    }
    
    private func handleNotAuthenticated() {
        //check auth status
        if Auth.auth().currentUser == nil {
            //show log in
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false)
        }
    }

}

