//
//  ContactList.swift
//  ContactListSwiftUI
//
//  Created by Александр on 11.11.21.
//

import SwiftUI

struct ContactList: View {
    
    let contactList: [Person]
    
    var body: some View {
        NavigationView {
            List(contactList) { personInfo in
                NavigationLink(personInfo.fullName, destination: PersonDetailInformation(personInfo: personInfo))
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(contactList: Person.getContactList())
    }
}
