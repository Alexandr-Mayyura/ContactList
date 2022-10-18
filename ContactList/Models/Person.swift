//
//  Person.swift
//  ContactList
//
//  Created by Aleksandr Mayyura on 17.10.2022.
//

import Foundation

struct Person {
    
    let name: String
    let lastName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
    
    static func getPerson() -> [Person] {
        let data = DataManager()
        
        let randomNames = Set(data.names)
        let randomLastNames = Set(data.lastNames)
        let randomPhone = Set(data.phones)
        let randomEmails = Set(data.emails)
        
        var person: [Person] = []
        
        for (index, _) in data.names.enumerated() {
            
            person.append(Person(
                name: Array(randomNames)[index],
                lastName: Array(randomLastNames)[index],
                phone: Array(randomPhone)[index],
                email: Array(randomEmails)[index]
            ))
        }
        return person
    }
    
}
