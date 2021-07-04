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

    
    static let red: Double = 154/255
    static let green: Double = 189/255
    static let blue: Double = 199/255
    let themeColor = Color(red: red, green: green, blue: blue)
    
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
            .padding()
            .font(.system(size: 15))
            
            Button(action: {}) {
                Text("로그인")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    // .shadow(color: .black, radius: 4, x: 5, y: 5)
            } // Login Button
            .frame(width: (UIScreen.main.bounds.maxX * 0.8), height: (UIScreen.main.bounds.maxY * 0.1) / 5).padding(.vertical)
            .background(themeColor)
            .cornerRadius(15)

            HStack {
                Button(action: {}) {
                    Text("아이디 찾기")
                }
                
                Text("·")
                
                Button(action: {}) {
                    Text("비밀번호 찾기")
                }
                
                Text("·")

                Button(action: {}) {
                    Text("회원가입")
                }
            } // HStack
            .font(.system(size: 13))
            .accentColor(.black)
            .padding(.top)
        } // VStack
    }
}

struct MemberView_Previes: PreviewProvider {
    static var previews: some View {
        MemberView()
    }
}
