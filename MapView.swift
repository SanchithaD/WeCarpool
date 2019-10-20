//
//  NavigationView.swift
//  We Carpool
//
//  Created by Sanchitha Dinesh on 10/19/19.
//  Copyright © 2019 Sanchitha. All rights reserved.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        VStack{
            
        MapView()
        NavigationLink(destination: ListOfContacts()){
            Text("Continue")
            } 
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView()
    }
}

struct NextButtonContent: View {
    var body: some View {
        Text("Continue")
    }
}
