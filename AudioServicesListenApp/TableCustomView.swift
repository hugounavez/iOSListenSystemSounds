//
//  TableCustomView.swift
//  AudioServicesListenApp
//
//  Created by Mac User on 6/16/17.
//  Copyright © 2017 Hugo. All rights reserved.
//

import UIKit

class TableCustomView: UIView{
    
    let pseudoNavBar : UIView = {
        let view: UIView = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 240 / 255.0, green: 240 / 255.0, blue: 255 / 255.0, alpha: 1.0)
        return view
    }()
    
    let titleLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "AudioServices"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let idTitleLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "ID"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let tableView: UITableView = {
        let table: UITableView = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupLayout(){
        
        self.addSubview(self.pseudoNavBar)
        
        self.pseudoNavBar.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.pseudoNavBar.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        self.pseudoNavBar.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        self.pseudoNavBar.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        self.pseudoNavBar.addSubview(self.titleLabel)
        
        self.titleLabel.centerYAnchor.constraint(equalTo: self.pseudoNavBar.centerYAnchor).isActive = true
        self.titleLabel.heightAnchor.constraint(equalTo: self.pseudoNavBar.heightAnchor).isActive = true
        self.titleLabel.widthAnchor.constraint(equalTo: self.pseudoNavBar.widthAnchor, multiplier: 0.7).isActive = true
        self.titleLabel.rightAnchor.constraint(equalTo: self.pseudoNavBar.rightAnchor).isActive = true
        
        
        self.pseudoNavBar.addSubview(self.idTitleLabel)
        self.idTitleLabel.centerYAnchor.constraint(equalTo: self.pseudoNavBar.centerYAnchor).isActive = true
        self.idTitleLabel.heightAnchor.constraint(equalTo: self.pseudoNavBar.heightAnchor).isActive = true
        self.idTitleLabel.leftAnchor.constraint(equalTo: self.pseudoNavBar.leftAnchor).isActive = true
        self.idTitleLabel.widthAnchor.constraint(equalTo: self.pseudoNavBar.widthAnchor, multiplier: 0.3).isActive = true
        
        self.addSubview(self.tableView)
        
        self.tableView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        self.tableView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1).isActive = true
        self.tableView.topAnchor.constraint(equalTo: self.pseudoNavBar.bottomAnchor).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    

}
