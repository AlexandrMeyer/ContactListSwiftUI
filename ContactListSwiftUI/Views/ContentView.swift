//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Александр on 11.11.21.
//

import SwiftUI

struct ContentView: View {
    
    let personList = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactList(contactList: personList)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            ContactInformationView(contactList: personList)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
