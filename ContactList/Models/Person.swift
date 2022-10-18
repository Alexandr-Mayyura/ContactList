//
//  Person.swift
//  ContactList
//
//  Created by Aleksandr Mayyura on 17.10.2022.
//

import Foundation

struct Person: Hashable {
    
    let name: String
    let lastName: String
    let phone: String
    let email: String
    
    static func getPerson() -> [Person] {
        let data = DataManager()
        
        let randomNames = Set(data.names)
        let randomLastNames = Set(data.lastNames)
        let randomPhone = Set(data.phones)
        let randomEmails = Set(data.emails)
        
        var person: [Person] = []
        
        for (i, _) in data.names.enumerated() {
            
            person.append(Person(
                name: Array(randomNames)[i],
                lastName: Array(randomLastNames)[i],
                phone: Array(randomPhone)[i],
                email: Array(randomEmails)[i]
            ))
        }
        return person
    }
    
}
