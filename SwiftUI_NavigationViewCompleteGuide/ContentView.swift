//
//  ContentView.swift
//  SwiftUI_NavigationViewCompleteGuide
//
//  Created by mohamed  habib on 25/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @State private var isShowingDetailView = false
    @ObservedObject var user = User()
    
    var body: some View {
        NavigationView{
            
            VStack(spacing: 30){
                
                NavigationLink(destination: Text( "Second View"), isActive: $isShowingDetailView ) {EmptyView()}
                
                Button("Tap to Show Detail"){
                    //more code here : network request...
                    self.isShowingDetailView = true
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        self.isShowingDetailView = false
                    }
                }
                
                Text( "Score: \(user.score)")
                 NavigationLink(destination: ChangeView()) {
                    Text( "Show Detail Second View")
                }
               
            }
            .navigationBarTitle("Navigation")
        }.environmentObject(user)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
