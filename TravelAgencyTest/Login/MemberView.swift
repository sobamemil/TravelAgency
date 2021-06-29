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
    
    var body: some View {
        VStack {
            TextField("아이디(이메일 계정)", text: $id)
                .autocapitalization(.none)
                .disableAutocorrection(true)
            
            SecureField("비밀번호", text: $pwd)
                .autocapitalization(.none)
                .disableAutocorrection(true)

        }
        .textFieldStyle(RoundedBorderTextFieldStyle())
        
        Text("비밀번호 : \(pwd)")
    }
}

struct MemberView_Previes: PreviewProvider {
    static var previews: some View {
        MemberView()
    }
}
