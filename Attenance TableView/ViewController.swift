//
//  ViewController.swift
//  Attenance TableView
//
//  Created by Shreyash Sharma on 30/03/18.
//  Copyright © 2018 Shreyash Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,  UITableViewDataSource ,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell( withIdentifier: "GroupTableViewCell") as?
            GroupTableViewCell
        {
            cell.contentView.backgroundColor = .white
            cell.heightAnchor.constraint(equalToConstant: 100).isActive = true
            return cell
        }
        else {
            return GroupTableViewCell()
        }
    }
    
    
    
   
    
    lazy var myTableView : UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
       
        return tableView
        
    }()

    
 
    override func viewDidLoad() {
        super.viewDidLoad()
       self.myTableView.register(GroupTableViewCell.self, forCellReuseIdentifier: "GroupTableViewCell")
        setupView()
   
    }
    
    
    
    func setupView() {
    
        view.addSubview(myTableView)
      
        
        
       myTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
       myTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
       myTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
      myTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    
    }
    
    
   
}



