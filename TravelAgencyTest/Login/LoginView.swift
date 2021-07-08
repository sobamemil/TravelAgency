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
    @State var checkReservationClicked: Bool = false
    
    var body: some View {
        ZStack {
            VStack{
                TopTabBarView(tabIndex: $tabIndex, firstText: "회원", secondText: "비회원").padding(.bottom, 15)
                if tabIndex == 0 {
                    MemberView(loginClicked: $loginClicked)
                }
                else {
                    GuestView(checkReservationClicked: $checkReservationClicked)
                }
                Spacer()
            } // VStack
            .frame(width: UIScreen.main.bounds.width - 24, alignment: .center)
            .padding(.horizontal, 12)
            .padding(.top, 10)
            
            if loginClicked {
                Color.gray.opacity(0.8).ignoresSafeArea(.all)
                AlertView(shown: $loginClicked, isSuccess: true, message: "등록되지 않은 정보입니다.\n아이디 또는 비밀번호를 다시 확인해 주세요.", title: "로그인 실패", themeColor: .accentColor)
                    //.position(x: (UIScreen.main.bounds.width / 2),y: (UIScreen.main.bounds.height / 3)) // 위에서부터 1/3 지점에 알림창이 뜨도록 설정
            }
            
            if checkReservationClicked {
                Color.gray.opacity(0.8).ignoresSafeArea(.all)
                AlertView(shown: $checkReservationClicked, isSuccess: true, message: "해당 예약 정보가 존재하지 않습니다.", title: "예약 정보 없음", themeColor: .accentColor)
            }
        } // ZStack
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
