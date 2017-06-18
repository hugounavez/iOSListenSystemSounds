//
//  AudioCell.swift
//  AudioServicesListenApp
//
//  Created by Mac User on 6/16/17.
//  Copyright © 2017 Hugo. All rights reserved.
//

import UIKit

class AudioCell: UITableViewCell{
    
    let idNumberLabel : UILabel = {
        let label: UILabel = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let soundName : UILabel = {
        let soundName: UILabel = UILabel()
        soundName.translatesAutoresizingMaskIntoConstraints = false
        soundName.textAlignment = .center
        return soundName
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupLayout()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout(){
        self.addSubview(self.idNumberLabel)
        
        self.idNumberLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        self.idNumberLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.idNumberLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.idNumberLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.3).isActive = true
        
        self.addSubview(self.soundName)
        
        self.soundName.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        self.soundName.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.soundName.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        self.soundName.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.7).isActive = true
    }

}
