//
//  PersonDetailInformation.swift
//  ContactListSwiftUI
//
//  Created by Александр on 11.11.21.
//

import SwiftUI

struct PersonDetailInformation: View {
    
    let personInfo: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 160, height: 160)
                Spacer()
            }
            
            Label(personInfo.phoneNumber, systemImage: "phone")
            Label(personInfo.email, systemImage: "tray")
        }
        .navigationTitle(personInfo.fullName)
    }
}


struct PersonDetailInformation_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetailInformation(personInfo: Person.getContactList().first!)
    }
}


