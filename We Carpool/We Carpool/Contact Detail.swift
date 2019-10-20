//
//  Contact Detail.swift
//  We Carpool
//
//  Created by Sanchitha Dinesh on 10/19/19.
//  Copyright © 2019 Sanchitha. All rights reserved.
//

import SwiftUI

struct Contact_Detail: View {
    
    var body: some View {
        Button(action: {
            var strNumber = "5869439696"
            let tel = "tel://"
            var formattedString = tel + strNumber
            let url: NSURL = URL(string: formattedString)! as NSURL
            UIApplication.shared.open(url as URL)


                
            }) {
               CarpoolButtonContent()
            }
        .background(
              Image("Background")
                  .resizable()
                  .frame(width: 1000, height: 1000))

    

}
struct CarpoolButtonContent: View {
    var body: some View {
        
        Text("Collaborate Ride")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 200, height: 200)
            .background(Color.init(red: 58/255, green: 171/255, blue: 150/255))
            .cornerRadius(15.0)
 
    }
}
struct Contact_Detail_Previews: PreviewProvider {
    static var previews: some View {
        Contact_Detail()
    }
}
}
