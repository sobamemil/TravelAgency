//
//  SideMenuView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/06/24.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack(spacing: 0) {
                    Circle()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.gray)
                        .padding(.trailing, 10)
                    
                    Text("심찬영")
                        .font(.system(size: 12))
                    
                    Text("님")
                        .font(.system(size: 8))
                } // HStack
                
                Spacer()
            } // VStack
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack {
                Text("Here")
            }
            .offset(x: (UIScreen.main.bounds.width / 2) , y: (UIScreen.main.bounds.height / 4))
            .background(Color.red)
            
        } // ZStack
    }
}

struct SideMenuView_PreViews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
