//
//  LoginView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/06/29.
//

import SwiftUI

struct LoginView: View {
    @State var tabIndex = 0
    @State var loginClicked: Bool = false
    
    var body: some View {
        ZStack {
            
            VStack{
                TopTabBarView(tabIndex: $tabIndex).padding(.bottom, 15)
                if tabIndex == 0 {
                    MemberView(loginClicked: $loginClicked)
                }
                else {
                    GuestView()
                }
                Spacer()
            } // VStack
            .frame(width: UIScreen.main.bounds.width - 24, alignment: .center)
            .padding(.horizontal, 12)
            .padding(.top, 10)
            
            if loginClicked {
                Color.gray.opacity(0.8).ignoresSafeArea(.all)
                AlertView(shown: $loginClicked, isSuccess: true, message: "테스트 메시지", title: "테스트 타이틀", themeColor: .accentColor)
                    //.position(x: (UIScreen.main.bounds.width / 2),y: (UIScreen.main.bounds.height / 3)) // 위에서부터 1/3 지점에 알림창이 뜨도록 설정
            }
            
        } // ZStack
        
    }
}
