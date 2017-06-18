//
//  ViewController.swift
//  AudioServicesListenApp
//
//  Created by Mac User on 6/16/17.
//  Copyright © 2017 Hugo. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let customView: TableCustomView = TableCustomView()
    let data: Sounds = Sounds()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLayout()
    }

    // Mark: Setup layout
    func setupLayout(){
    
        self.view.addSubview(self.customView)
    
        self.customView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0).isActive = true
        self.customView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0).isActive = true
        self.customView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20).isActive = true
        self.customView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
        
        self.customView.setupLayout()
        self.customView.tableView.register(AudioCell.self, forCellReuseIdentifier: "defaultCell")
        self.customView.tableView.delegate = self
        self.customView.tableView.dataSource = self
        self.customView.tableView.reloadData()
    }


}

extension ViewController {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.soundList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "defaultCell", for: indexPath) as! AudioCell
        
        let soundInfo : (Int, String, String) = self.data.soundList[indexPath.row]
        cell.idNumberLabel.text = "\(soundInfo.0)"
        cell.soundName.text = "\(soundInfo.1)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.playSoundForRow(rowNumber: indexPath.row)
    }
    
    func playSoundForRow(rowNumber: Int){
        let systemSoundID: SystemSoundID = SystemSoundID(self.data.getSound(rowNumber: rowNumber))
        AudioServicesPlaySystemSound (systemSoundID)
    
    }
}

