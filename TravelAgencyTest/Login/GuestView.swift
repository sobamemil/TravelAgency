//
//  GuestView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/06/29.
//

import SwiftUI

struct GuestView: View {
    @State private var name: String = ""
    @State private var reservationNumber: String = ""
    @State private var phoneNumber: String = ""
    @State private var packageToggle = true
    @State private var busVisaAirplaneToggle = false
    
    static let red: Double = 154/255
    static let green: Double = 189/255
    static let blue: Double = 199/255
    let themeColor = Color(red: red, green: green, blue: blue)
    
    // 토글 커스텀
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
    
    var body: some View {
        
        // 패키지 토글과 버스/비자/항공 토글을 바인딩하여 둘 중 하나만 켜지도록 설정
        let packTog = Binding<Bool>(get: { self.packageToggle }, set: { self.packageToggle = $0; self.busVisaAirplaneToggle = false;})
        let busTog = Binding<Bool>(get: { self.busVisaAirplaneToggle }, set: { self.packageToggle = false; self.busVisaAirplaneToggle = $0;})
        
        VStack {
            TextField("예약자 성명", text: $name)
                .customTextField(padding: 10)
                .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.8) )
                .frame(height: (UIScreen.main.bounds.maxY * 0.1) / 2 )
                .padding(.bottom, 5)
                
            TextField("예약번호(영문, 숫자 포함 12자리)", text: $reservationNumber)
                .customTextField(padding: 10)
                .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.8) )
                .frame(height: (UIScreen.main.bounds.maxY * 0.1) / 2 )
                .padding(.bottom, 5)
            
            HStack {
                Text("연락처")
                    .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.15) )
                    .frame(height: (UIScreen.main.bounds.maxY * 0.1) / 2)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                    .padding(.bottom, 5)
                    .foregroundColor(.gray)
                
                TextField("ex) 01012345678", text: $phoneNumber)
                    .customTextField(padding: 10)
                    .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.65) )
                    .frame(height: (UIScreen.main.bounds.maxY * 0.1) / 2)
                    .padding(.bottom, 5)
            } // HStack
            .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.8))
            
            HStack {
                Toggle("패키지", isOn: packTog)
                    .toggleStyle(CheckToggleStyle())
                    .padding(.trailing)
                Toggle("버스/비자/항공", isOn: busTog)
                    .toggleStyle(CheckToggleStyle())
            } // HStack
            .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.8), alignment: .leading)
            .padding(.bottom)
            
            VStack {
                Text("※ 예약 시 제공한 본인의 연락처 또는 이메일 정보를 입력해 주시기 바랍니다.")
                    .padding(.bottom)
                Text("※ 예약 시 본인의 연락처 또는 이메일을 입력하지 않은 경우, 전화로 연락 바랍니다.")
            } // VStack
            .frame(width: (UIScreen.main.bounds.maxX * 0.7), alignment: .leading)
            .padding(.bottom)
            
            Button(action: {}) {
                Text("예약 조회")
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .frame(width: (UIScreen.main.bounds.maxX * 0.8), height: (UIScreen.main.bounds.maxY * 0.1) / 5).padding(.vertical)
                    // .shadow(color: .black, radius: 4, x: 5, y: 5)
            } // Login Button
            .frame(width: (UIScreen.main.bounds.maxX * 0.8), height: (UIScreen.main.bounds.maxY * 0.1) / 5).padding(.vertical)
            .background(themeColor)
            .cornerRadius(15)
            
        } // VStack
    }
}

/// 텍스트 필드 커스텀
struct TextFieldModifier: ViewModifier {
    let color: Color
    let padding: CGFloat // <- space between text and border
    let lineWidth: CGFloat

    func body(content: Content) -> some View {
        content
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .textFieldStyle(.plain)
            .padding(padding)
            .overlay(RoundedRectangle(cornerRadius: padding)
                        .stroke(color, lineWidth: lineWidth)
            )

    }
}

extension View {
    // Default settings
    func customTextField(color: Color = .gray, padding: CGFloat = 3, lineWidth: CGFloat = 1.0) -> some View {
        self.modifier(TextFieldModifier(color: color, padding: padding, lineWidth: lineWidth))
    }
}
///

struct GuestView_Previews: PreviewProvider {
    static var previews: some View {
        GuestView()
    }
}
