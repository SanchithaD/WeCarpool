


//
//  SwiftUIView.swift
//  WeCarpool
//
//  Created by Kalyani Tumuluri on 10/19/19.
//  Copyright © 2019 Kalyani Tumuluri. All rights reserved.
//

import SwiftUI
//struct UsernameTextField: View {
//@Binding var username: String
/*var body: some View {
 TextField("Username", text: $username)
 .padding()
 .background(lightGreyColor)
 .cornerRadius(5.0)
 .padding(.bottom, 20)
 }
 */
struct NextScreen: View {
    //@State private var place: String = ""
    //@State private var place2: String="Enter Ending Point(Address)"
    @State var destination: String=""
    var body: some View {
        
        NavigationView {
        ZStack{
            VStack{
               
    //        }
           // VStack {
//                                   .padding()
//                                   .background(lightGreyColor)
//                                    .cornerRadius(5))
//                                   .padding(.bottom, 20)
                
//                Text("Where are you going?")
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//                    .foregroundColor(Color.black)
           
                
                NavigationLink(destination: MapViewLink()){
                    NextButtonContent()
                    .background(
                    Image("Assets.xcassets/TRAFFIC")
                        .resizable()
                        .frame(width: 1000, height: 1000))
                    .font(.largeTitle)
                    .background(
                        Image("Traffic")
                            .resizable()
                            .frame(width: 1000, height: 1000))

                    
                }.navigationBarTitle("Where Are You Going")
                .padding()
            }
            TextField("Enter destination", text: $destination)
                               .padding()
                               //.background(lightGreyColor)
                               .cornerRadius(5.0)
                .padding(.bottom, 200)
            
           }
        }
    }
    
    
    struct NextButtonContent: View {
        var body: some View {
            Text("NEXT")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.green)
                .cornerRadius(15.0)
        }
    }
struct NextScreen_Previews: PreviewProvider {
    static var previews: some View {
        NextScreen(destination: "")
    }
}
}

//}

