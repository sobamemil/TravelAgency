//
//  MemberView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/06/29.
//

import SwiftUI

struct CheckToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Label {
                configuration.label
            } icon: {
                Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(configuration.isOn ? .accentColor : .secondary)
                    .accessibility(label: Text(configuration.isOn ? "Checked" : "Unchecked"))
                    .imageScale(.large)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct MemberView: View {
    @State private var id: String = ""
    @State private var pwd: String = ""
    @State private var autoLogin: Bool = false
    
    @State private var isOn = false
    
    @Binding var loginClicked: Bool
    @State private var message = ""
    
    static let red: Double = 154/255
    static let green: Double = 189/255
    static let blue: Double = 199/255
    let themeColor = Color(red: red, green: green, blue: blue)
    
    var body: some View {
        VStack(spacing: 0) {
            TextField("아이디(이메일 계정)", text: $id)
                .customTextField(padding: 10)
                .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.8) )
                .frame(height: (UIScreen.main.bounds.maxY * 0.1) / 2 )
                .padding(.bottom, 10)

            
            SecureField("비밀번호", text: $pwd)
                .customTextField(padding: 10)
                .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.8) )
                .frame(height: (UIScreen.main.bounds.maxY * 0.1) / 2)
                .padding(.bottom)

            HStack {
//                Text("자동로그인")
//                    .frame(alignment: .leading)
//                Toggle(isOn: $autoLogin) {
//
//                }
//                    .labelsHidden()
//                    .toggleStyle(SwitchToggleStyle(tint: themeColor))
                
                Toggle("자동로그인", isOn: $isOn)
                    .toggleStyle(CheckToggleStyle())
                
            } // HStack
            .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.8), alignment: .leading )
            .padding(.bottom)
            .font(.system(size: 15))
            
            Button(action: {
                withAnimation {
                    loginClicked.toggle()
                }
            }) {
                Text("로그인")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .frame(width: (UIScreen.main.bounds.maxX * 0.8), height: (UIScreen.main.bounds.maxY * 0.1) / 5).padding(.vertical)
                    // .shadow(color: .black, radius: 4, x: 5, y: 5)
            } // Login Button
            .frame(width: (UIScreen.main.bounds.maxX * 0.8), height: (UIScreen.main.bounds.maxY * 0.1) / 5).padding(.vertical)
            .background(themeColor)
            .cornerRadius(15)

            HStack {
                NavigationLink(destination: FindAccountView(tabIndex: 0)) {
                    Text("아이디 찾기")
                }.isDetailLink(false)

                Text("·")
                
                NavigationLink(destination: FindAccountView(tabIndex: 1)) {
                    Text("비밀번호 찾기")
                }
                
                Text("·")

                NavigationLink(destination: Text("회원가입 화면")) {
                    Text("회원가입")
                }
            } // HStack
            .font(.system(size: 13))
            .foregroundColor(Color.black)
            .padding(.top)
        } // VStack
//        .background(
//            GeometryReader { proxy in
//                Color.clear
//                .onAppear {
//                    vstackSize = proxy.size
//                }
//            }
//        )
    }
}

struct MemberView_Previes: PreviewProvider {
    static var previews: some View {
        MemberView(loginClicked: .constant(false))
    }
}
