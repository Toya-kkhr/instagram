//
//  NotificationViewController.swift
//  instagram
//
//  Created by 加古原　冬弥 on 2020/09/29.
//  Copyright © 2020 加古原　冬弥. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let tableview: UITableView = {
        let tableview = UITableView()
        tableview.register(UITableViewCell.self,
                           forCellReuseIdentifier: "cell")
        return tableview
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Notifications"
        view.backgroundColor = .systemBackground
        view.addSubview(tableview)
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableview.frame = view.bounds
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    
    
}

