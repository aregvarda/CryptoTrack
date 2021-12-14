//
//  ViewController.swift
//  CryptoTrack
//
//  Created by Геворг on 14.12.2021.
//

import UIKit

// API Caller
// UI to show different cryptos
// MVVM

class ViewController: UIViewController {
    
    private let tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(CryptoTableViewCell.self,
                           forCellReuseIdentifier: CryptoTableViewCell.identifier)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.dataSource = self
        
    }
}

