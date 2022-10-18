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
        passPersons()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personDetailVC = segue.destination as? PersonDetailViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personDetailVC?.person = persons[indexPath.row]
        personDetailVC?.title = persons[indexPath.row].fullName
    }
}

// MARK: private methods

extension PersonListViewController {
    private func passPersons() {
        guard let tabBarVC = tabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach{ viewController in
            if let navigationController = viewController as? UINavigationController {
                let viewController = navigationController.topViewController
                guard let personSecondVC = viewController as? PersonSectionTableViewController else { return }
                personSecondVC.persons = persons
            }
        }
    }
}
