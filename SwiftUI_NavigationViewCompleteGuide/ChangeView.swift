//
//  ChangeView.swift
//  SwiftUI_NavigationViewCompleteGuide
//
//  Created by mohamed  habib on 25/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI
import Combine

struct ChangeView: View {
    
   @EnvironmentObject var user: User
    
    var body: some View {
        VStack {
            Text("Score: \(user.score)")
            Button("Increase"){
                self.user.score += 1
            }
            
        }
    }
}

struct ChangeView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeView()
    }
}
