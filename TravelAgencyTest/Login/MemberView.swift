//
//  MemberView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/06/29.
//

import SwiftUI

struct MemberView: View {
    @State private var id: String = ""
    @State private var pwd: String = ""
    @State private var autoLogin: Bool = false 
    
    var body: some View {
        VStack {
            TextField("  아이디(이메일 계정)", text: $id)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .textFieldStyle(.plain)
                .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.8) )
                .frame(height: (UIScreen.main.bounds.maxY * 0.1) / 2 )
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                .padding(.bottom, 5)

            
            SecureField("  비밀번호", text: $pwd)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .textFieldStyle(.plain)
                .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.8) )
                .frame(height: (UIScreen.main.bounds.maxY * 0.1) / 2)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                .padding(.bottom, 5)

            Toggle(isOn: $autoLogin) {
                Text("자동로그인")
            }
            .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.8) )
            
//            if autoLogin {
//                Text("autoLogin: On")
//            } else if !autoLogin {
//                Text("autoLogin: Off")
//            }

            
        }
        
        
    }
}

struct MemberView_Previes: PreviewProvider {
    static var previews: some View {
        MemberView()
    }
}
