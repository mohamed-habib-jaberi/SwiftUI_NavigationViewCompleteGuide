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
    
    @ObservedObject var user = User()
    @State private var result = 0
    @State private var fullScreen = false
    
    
    var body: some View {
        NavigationView{
            
            VStack(spacing: 30){
                
                Text("Primary")
                    .font(Font.system(size: 25, weight: .bold, design: .rounded))
                Text("Secondary")
                                  .font(Font.system(size: 25, weight: .bold, design: .rounded))
                
                Button("Toggle full screen"){
                    self.fullScreen.toggle()
                }
                
                Text( "Score: \(user.score)")
                NavigationLink(destination: ChangeView()) {
                    Text( "Show Detail Second View")
                }
                
                Text("Result: \(result)")
                
            }
            .navigationBarTitle("Primary")
            .navigationBarHidden(fullScreen)
            .navigationBarItems(
                leading:
                Button("Substract 1"){
                    self.result -= 1
                },
                trailing:
                
                HStack {
                    Button("Add 1"){
                        self.result += 1
                    }
                    Button("Multiply 2"){
                        self.result *= 2
                    }
                }
            )
        }
        .environmentObject(user)
        .statusBar(hidden: fullScreen)
            //show single view at the time in portrait and landscape mode
    .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
