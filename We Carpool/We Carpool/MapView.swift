//
//  NavigationView.swift
//  We Carpool
//
//  Created by Sanchitha Dinesh on 10/19/19.
//  Copyright © 2019 Sanchitha. All rights reserved.
//

import SwiftUI

struct MapViewLink: View {
    var body: some View {
        VStack{
            
        MapView()
        NavigationLink(destination: ListOfContacts()){
            Text("Continue")
            } 
        }
    }
}

struct MapViewLink_Previews: PreviewProvider {
    static var previews: some View {
        MapViewLink()
    }
}

struct NextButtonContent: View {
    var body: some View {
        Text("Continue")
    }
}
