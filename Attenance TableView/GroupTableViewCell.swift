//
//  GroupTableViewCell.swift
//  Attenance TableView
//
//  Created by Shreyash Sharma on 30/03/18.
//  Copyright © 2018 Shreyash Sharma. All rights reserved.
//

import UIKit

class GroupTableViewCell: UITableViewCell {
    
    var studentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        
        return view
    }()
    
    var studentLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.textColor = .white
        view.text = "A"
        view.textAlignment = .center
        view.layer.cornerRadius = view.frame.width / 2
        view.font = UIFont(name: "HelveticaNeue-Bold", size: 17)
        return view
    }()
    
    
    var studentNameLabel : UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.textColor = .blue
        view.text = "Shreyash Sharma"
        view.textAlignment = .left
        view.font = UIFont(name: "HelveticaNeue", size: 18)
        return view
    }()
    
    
    
    var registerNumberLabel : UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.textColor = .blue
        view.text = "RA1611008010187"
        view.textAlignment = .left
        view.font = UIFont(name: "HelveticaNeue", size: 12)
        return view
    }()
    
    
    
    var branchLabel : UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.textColor = .blue
        view.textAlignment = .left
        view.text = "Information Technology"
        
        view.font = UIFont(name: "HelveticaNeue", size: 12)
        return view
    }()
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView()
    {
        addSubview(studentView)
        studentView.topAnchor.constraint(equalTo: topAnchor , constant: 10).isActive = true
        studentView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        
        studentView.widthAnchor.constraint(equalToConstant: 75).isActive = true
        studentView.heightAnchor.constraint(equalToConstant: 75).isActive = true
        studentView.layer.cornerRadius = 75 / 2
        
        
        studentView.addSubview(studentLabel)
        studentLabel.centerXAnchor.constraint(equalTo: studentView.centerXAnchor).isActive = true
        studentLabel.centerYAnchor.constraint(equalTo: studentView.centerYAnchor).isActive = true
        

        
        
        studentView.addSubview(studentNameLabel)
        studentNameLabel.leftAnchor.constraint(equalTo: leftAnchor , constant: 108).isActive = true
        studentNameLabel.topAnchor.constraint(equalTo: topAnchor, constant:14 ).isActive = true
        studentNameLabel.sizeToFit()
        
        studentView.addSubview(registerNumberLabel)
        
       registerNumberLabel.leftAnchor.constraint(equalTo: leftAnchor , constant: 108).isActive = true
       registerNumberLabel.topAnchor.constraint(equalTo: topAnchor, constant:38 ).isActive = true
        




        studentView.addSubview(branchLabel)
       
        branchLabel.leftAnchor.constraint(equalTo: leftAnchor , constant: 108).isActive = true
        branchLabel.topAnchor.constraint(equalTo: topAnchor, constant: 56).isActive = true
  
    }
    
    
    
    
}
