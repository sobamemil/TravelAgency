//
//  ContentView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        VStack {
            AgencyNavigationView()
            
            Image("image_1").resizable().frame(height: 250)
                .padding(.bottom, 20)
            SelectableMenuView()
            
            Spacer()
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    