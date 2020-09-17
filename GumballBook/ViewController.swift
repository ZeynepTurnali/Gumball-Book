//
//  ViewController.swift
//  GumballBook
//
//  Created by testinium on 16.09.2020.
//  Copyright © 2020 testinium. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var members = [Members]()
    var chosenMember : Members?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Gumball"
        
        tableView.delegate = self
        tableView.dataSource = self 
        
        
        let gumball = Members(name: "Gumball", image: UIImage(named: "gumball")!, occupation: "Student", species: "Cat", age: "12")
        let darwin = Members(name: "Darwin", image: UIImage(named: "darwin")!, occupation: "Student", species: "Goldfish", age: "10")
        let anais = Members(name: "Anais", image: UIImage(named: "anais")!, occupation: "Student", species: "Rabbit", age: "8")
        let nicole = Members(name: "Nicole", image: UIImage(named: "nicole")!, occupation: "Saleswoman", species: "Cat", age: "38")
        let richard = Members(name: "Richard", image: UIImage(named: "richard")!, occupation: "Unemployed", species: "Rabbit", age: "38")
        
        members.append(gumball)
        members.append(darwin)
        members.append(anais)
        members.append(nicole)
        members.append(richard)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = members[indexPath.row].gumbalMemberName
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return members.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenMember = members[indexPath.row]
        self.performSegue(withIdentifier: "segueDisplayVC", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueDisplayVC" {
            let destinationVC = segue.destination as! ImageViewController
            destinationVC.selectedGumballMember = chosenMember
        }
    }
    
}

