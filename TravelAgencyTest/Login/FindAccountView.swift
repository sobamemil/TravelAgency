//
//  FindAccountView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/07/07.
//

import SwiftUI

struct FindAccountView: View {
    @State var tabIndex = 0
    
    var body: some View {
        VStack {
            TopTabBarView(tabIndex: $tabIndex, firstText: "아이디 찾기", secondText: "비밀번호 찾기").padding(.bottom, 15)
            Spacer()
            
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: CustomBackButton(tabIndex: $tabIndex))
    }
}

struct CustomBackButton: View {
    @Binding var tabIndex: Int
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                HStack(spacing: 0) {
                    Image(systemName: "chevron.backward")
                    if tabIndex == 0 {
                        Text("아이디 찾기")
                    } else {
                        Text("비밀번호 찾기")
                    }
                }
                .foregroundColor(MemberView(loginClicked: .constant(true)).themeColor)
                
            }
    }
}

struct FindAccountView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomBackButton(tabIndex: .constant(0))
            FindAccountView()
            Spacer()
        }
        .frame(alignment: .topLeading)
        
    }
}
