//
//  TabBarController.swift
//  ContactList
//
//  Created by Aleksandr Mayyura on 26.11.2022.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? PersonListViewController else { return }
        guard let sectionVC = viewControllers?.last as? PersonSectionTableViewController else { return }
        
        let persons = Person.getPerson()
        contactListVC.persons = persons
        sectionVC.persons = persons
    }
}
