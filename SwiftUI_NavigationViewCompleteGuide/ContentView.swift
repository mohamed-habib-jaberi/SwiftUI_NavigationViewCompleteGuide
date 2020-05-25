//
//  ContentView.swift
//  SwiftUI_NavigationViewCompleteGuide
//
//  Created by mohamed  habib on 25/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection : String? = nil
    
    var body: some View {
        NavigationView{
            
            VStack(spacing: 30){
                
                NavigationLink(destination: Text( "Second View"),tag: "SecondView", selection: $selection ) {EmptyView()}
                
                NavigationLink(destination: Text("Third View"), tag: "ThirdView", selection: $selection) {
                    EmptyView()
                }
                
                Button("Tap to Show Second"){
                    //more code here : network request...
                    self.selection = "SecondView"
                }
                Button("Tap to Show Third"){
                    //more code here : network request...
                    self.selection = "ThirdView"
                }
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
