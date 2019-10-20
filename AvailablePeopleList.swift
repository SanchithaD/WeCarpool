//
//  NextScreen.swift
//  WeCarpool
//
//  Created by Sanchitha Dinesh on 10/19/19.
//  Copyright © 2019 Sanchitha. All rights reserved.
//

import SwiftUI

struct Contact
{
    var name:String
    var jobTitle:String
    var phone:String
}
struct ContactRow : View {
    var contact: Contact
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(contact.name).font(.title)
            HStack {
                Text(contact.jobTitle).font(.subheadline)
                Spacer()
                Text(contact.phone).font(.subheadline)
            }
        }
    }
}
let contacts = [
       Contact(name: "Vaishnavi K", jobTitle: "Friend", phone: "+1-669-284-4814"),
       Contact(name: "Akila V", jobTitle: "Family", phone: "+1-200-1234-5678"),
       Contact(name: "Sarasvati B", jobTitle: "Friend", phone: "+1-200-7162-2715"),
       Contact(name: "Dinesh T", jobTitle: "Family", phone: "+1-200-8162-7651"),
       Contact(name: "Shailesh SK ", jobTitle: "Classmate", phone: "+1-200-9876-5432"),
   ]
struct ListOfContacts : View {
   
    var body: some View {
        NavigationView {
         List(contacts, id: \.name) { contact in
        NavigationLink(destination: Contact_Detail()) {
            ContactRow(contact: contact)
            } .navigationBarTitle("Possible Rides")
        }
     }
}


struct NextScreen_Previews: PreviewProvider {
    static var previews: some View {
        NextScreen()
}
}
}
