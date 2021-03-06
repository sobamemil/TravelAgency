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
        VStack(alignment: .leading) {
            
            VStack(alignment: .leading) {
                switch(tabIndex) {
                case 0:
                    Text("아이디를 잊어버리셨나요?")
                        .font(.system(size: 25, weight: .bold, design: .default))
                    Text("하단의 방법을 통해 아이디를 찾을 수 있습니다.")
                        .font(.subheadline)
                case 1:
                    Text("비밀번호를 잊어버리셨나요?")
                        .font(.system(size: 25, weight: .bold, design: .default))
                    Text("하단의 방법을 통해 비밀번호를 찾을 수 있습니다.")
                        .font(.subheadline)
                default:
                    Text("")
                }
            } // VStack
            .padding(.top)
            .padding(.bottom)
            
            
            TopTabBarView(tabIndex: $tabIndex, firstText: "아이디 찾기", secondText: "비밀번호 찾기")
                // .padding(.bottom, 15)
            
            List {
                ForEach(0..<3) { num in
                    FindIDRow(index: num)
                }
            } // List
            
            Spacer()
            
        } // VStack
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: CustomBackButton(tabIndex: $tabIndex, firstText: "아이디 찾기", secondText: "비밀번호 찾기"))
        .padding(.top, 10)
        .frame(maxWidth: (UIScreen.main.bounds.maxX - 60))
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
            .foregroundColor(Color.getThemeColor())
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
