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
            List(contactList, id: \.phoneNumber) { personInfo in
                NavigationLink(destination: PersonDetailInformation(personInfo: personInfo)) {
                    Text(personInfo.fullName)
                        .font(.title3)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(contactList: [])
    }
}
