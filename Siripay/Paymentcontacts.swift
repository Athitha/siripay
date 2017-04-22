//
//  Paymentcontacts.swift
//  Siripay
//
//  Created by Athitha Anantharamu on 12/4/16.
//  Copyright © 2016 Athitha Anantharamu. All rights reserved.
//

import UIKit
import Intents

class Paymentcontacts: NSObject {
    
    let name: String
    let email: String
    
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }

    class func allContacts()->[Paymentcontacts]{
        return [
            Paymentcontacts(name: "Neha", email: "athitha006@gmail.com"),
            Paymentcontacts(name: "Neelam", email: "akshatha0005@gmail.com"),
            Paymentcontacts(name: "Jhon", email: "athitha075@gmail.com"),
            Paymentcontacts(name: "Tom", email: "athitha.anantharamu@gmail.com")
        ]
    }
    
    func inPerson() -> INPerson {
        let nameFormatter = PersonNameComponentsFormatter()
        let personHandle = INPersonHandle(value: self.email, type: INPersonHandleType.emailAddress)
        
        if let nameComponents = nameFormatter.personNameComponents(from: name){
            return INPerson(personHandle: personHandle, nameComponents: nameComponents, displayName: nameComponents.familyName, image: nil, contactIdentifier: nil, customIdentifier: nil)
        }else {
            return INPerson(personHandle: personHandle, nameComponents: nil, displayName: nil, image: nil, contactIdentifier: nil, customIdentifier: nil)
        }
        
    }
    
}
