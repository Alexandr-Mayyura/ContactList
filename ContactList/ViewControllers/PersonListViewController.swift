//
//  ViewController.swift
//  ContactList
//
//  Created by Aleksandr Mayyura on 17.10.2022.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    let persons = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
   print(persons)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(person.name) \(person.lastName)"
        cell.contentConfiguration = content
        
        return cell
    }
    
    
}

