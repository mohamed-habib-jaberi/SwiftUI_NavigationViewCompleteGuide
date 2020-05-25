//
//  ResultView.swift
//  SwiftUI_NavigationViewCompleteGuide
//
//  Created by mohamed  habib on 25/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct ResultView: View {
    
      var choice : String
     
    
    var body: some View {
        Text("You choice \(choice)")
    }
}

struct ResultView_Previews: PreviewProvider {
    
     static var choice = "Croissant"
    
    static var previews: some View {
        ResultView(choice: choice)
    }
}
