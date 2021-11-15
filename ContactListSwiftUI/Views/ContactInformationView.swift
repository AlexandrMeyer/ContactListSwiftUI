//
//  ContactInformationView.swift
//  ContactListSwiftUI
//
//  Created by Александр on 11.11.21.
//

import SwiftUI

struct ContactInformationView: View {
    
    let contactList: [Person]
    
    var body: some View {
        NavigationView {
            List(contactList) { personInfo in
                Section(header: Text(personInfo.fullName)) {
                    Label(personInfo.phoneNumber, systemImage: "phone")
                    Label(personInfo.email, systemImage: "tray")
                }
                .textCase(.none)
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactInformationView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInformationView(contactList: Person.getContactList())
    }
}
