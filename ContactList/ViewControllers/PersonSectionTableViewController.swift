//
//  PersonSectionTableViewController.swift
//  ContactList
//
//  Created by Aleksandr Mayyura on 18.10.2022.
//

import UIKit

class PersonSectionTableViewController: UITableViewController {
    
    var persons: [Person]!
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personSection", for: indexPath)
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        } else if indexPath.row == 1 {
            content.text = person.email
            content.image = UIImage(systemName: "mail")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
}
