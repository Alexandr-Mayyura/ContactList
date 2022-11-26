//
//  PersonDetailViewController.swift
//  ContactList
//
//  Created by Aleksandr Mayyura on 18.10.2022.
//

import UIKit

class PersonDetailViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.name
        
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
}
