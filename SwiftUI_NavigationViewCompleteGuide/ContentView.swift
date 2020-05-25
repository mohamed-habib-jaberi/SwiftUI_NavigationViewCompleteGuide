//
//  ContentView.swift
//  SwiftUI_NavigationViewCompleteGuide
//
//  Created by mohamed  habib on 25/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            NavigationLink(destination: Text("Second View")) {
                Image("MiceCream")
                .renderingMode(.original)
                .resizable()
                .frame(width: 100, height: 100)
                
            }
              
            .navigationBarTitle("Navigation")
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
