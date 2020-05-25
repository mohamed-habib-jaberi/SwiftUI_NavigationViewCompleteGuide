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
            
            VStack(spacing: 30){
                Text("Do you want to choice Croissant or PanCakes")
                
                NavigationLink(destination: ResultView(choice: "PanCakes")) {
                    Text("you choice PanCakes ")
                  
                }
                NavigationLink(destination: ResultView(choice: "Croissant")) {
                    Text("you choice Croissant ")
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
