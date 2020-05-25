//
//  ContentView.swift
//  SwiftUI_NavigationViewCompleteGuide
//
//  Created by mohamed  habib on 25/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingDetailView = false
    
    var body: some View {
        NavigationView{
            
            VStack(spacing: 30){
                
                NavigationLink(destination: Text( "Second View"), isActive: $isShowingDetailView ) {EmptyView()}
                
                Button("Tap to Show Detail"){
                    //more code here : network request...
                    self.isShowingDetailView = true
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
