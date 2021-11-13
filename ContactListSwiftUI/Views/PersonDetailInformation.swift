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
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 160, height: 160)
            VStack(alignment: .leading, spacing: 15) {
                InfoLineView(imageName: "phone", text: personInfo.phoneNumber)
                InfoLineView(imageName: "tray", text: personInfo.email)
            }
            .padding()
            Spacer()
        }
        .navigationTitle(personInfo.fullName)
    }
}

struct PersonDetailInformation_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetailInformation(personInfo: Person.getContactList()[0])
    }
}


