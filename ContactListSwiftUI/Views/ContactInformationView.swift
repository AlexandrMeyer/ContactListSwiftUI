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
            List(contactList, id: \.phoneNumber) { personInfo in
                Section(header: Text(personInfo.fullName)) {
                    InfoLineView(imageName: "phone", text: personInfo.phoneNumber)
                    InfoLineView(imageName: "tray", text: personInfo.email)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactInformationView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInformationView(contactList: [])
    }
}
