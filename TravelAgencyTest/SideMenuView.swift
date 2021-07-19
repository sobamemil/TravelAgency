//
//  SideMenuView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/06/24.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                
                Text("Profile")
                        .foregroundColor(.gray)
                        .font(.headline)
            } // HStack
            .padding(.top, 100)
            
            HStack {
                Image(systemName: "envelope")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Messages")
                    .foregroundColor(.gray)
                    .font(.headline)
            } // HStack
                .padding(.top, 30)
            
            HStack {
                Image(systemName: "gear")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                Text("Settings")
                    .foregroundColor(.gray)
                    .font(.headline)
            } // HStack
                .padding(.top, 30)
            Spacer()
            
        } // VStack
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

struct SideMenuView_PreViews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
