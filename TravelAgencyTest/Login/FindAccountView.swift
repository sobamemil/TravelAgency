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
        .navigationBarItems(leading: CustomBackButton(tabIndex: $tabIndex, firstText: "아이디 찾기", secondText: "비밀번호 찾기"))
        .padding(.top, 10)
    }
}

struct CustomBackButton: View {
    @Binding var tabIndex: Int
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    let firstText: String
    let secondText: String
    
    init(tabIndex: Binding<Int> = .constant(0), firstText: String = "돌아가기", secondText: String = "돌아가기") {
        self._tabIndex = tabIndex
        self.firstText = firstText
        self.secondText = secondText
    }
    
    var body: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            HStack {
                Image(systemName: "chevron.backward")
                if tabIndex == 0 {
                    Text(firstText)
                } else {
                    Text(secondText)
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
