//
//  LoginView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/06/29.
//

import SwiftUI

struct LoginView: View {
    @State var tabIndex = 0
    
    var body: some View {
        VStack{
            TopTabBarView(tabIndex: $tabIndex).padding(.bottom, 15)
            if tabIndex == 0 {
                MemberView()
            }
            else {
                GuestView()
            }
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 24, alignment: .center)
        .padding(.horizontal, 12)
        .padding(.top, 10)
    }
}
