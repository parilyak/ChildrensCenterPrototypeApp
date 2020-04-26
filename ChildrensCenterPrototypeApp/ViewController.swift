//
//  ViewController.swift
//  ChildrensCenterPrototypeApp
//
//  Created by Lilya on 25.04.2020.
//  Copyright © 2020 Lilya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    
    var data = [
        ["💻 Coding",       "🎥 Filmmaking",      "🔬 Science",    "🎹 Arts",
         "💃 Dancing",     "🏓 Sports",    "📚 LitClub",    "📝 Writing", "⛺️ Scouts", "🎭 Acting", "🍱 Cooking"],
        ["Mon-Fri 💻Coding",        "Sat-Sun 🎥Filmmaking",      "Mon-Fri 🔬Science",    "Wed,Th 🎹Arts",
        "Tue-Fri 💃Dancing",     "Mon-Sun 🏓Sports",    "Sat 📚LitClub",    "Sat 📝Writing", "Sun ⛺️Scouts", "Sat-Sun 🎭Acting", "Wed 🍱Cooking"],
        ["Kyiv vul.Holosiivska,13A", "Kyiv vul.LvivskaSquare,14"]
    ]

    var p: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib.init(nibName: "CustomCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "customCell")
        
        tableView.backgroundColor = .white
        
        p = 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[p].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        let str = data[p][indexPath.row].components(separatedBy: " ")
        cell.customInit(text: str[1], accessoryText: str[0])
        return cell
    }
    
    @IBAction func switchCustomTableViewAction(_ sender: UISegmentedControl) {
        
        p = sender.selectedSegmentIndex
        tableView.reloadData()
        
    }
    
}

