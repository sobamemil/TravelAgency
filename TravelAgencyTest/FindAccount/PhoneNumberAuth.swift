//
//  PhoneNumberAuth.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/07/11.
//

import SwiftUI

struct PhoneNumberAuth: View {
    @State private var name: String = ""
    @State private var frontNumber: String = ""
    @State private var rearNumber: String = ""
    
    @State private var selectedTelecom: String = "SKT"
    @State private var phoneNumber: String = "010"
    @State private var clickedAuth: Bool = false
    @State private var msgWasSent: Bool = false
    @State private var authNumber: String = ""
        
    private let telecomList = ["알뜰통신사", "U+", "KT", "SKT"]
    
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Group {
                    VStack(alignment: .leading) {
                            Text("휴대폰 인증")
                                .font(.system(size: 25, weight: .bold, design: .default))
                        
                    } // VStack
                    .padding(.vertical)
                }
                
                Group {
                    Divider()
                    TextField("홍길동", text: $name)
                        .customTextField(padding: 5, lineWidth: 0)
                    Divider()
                    
                    HStack {
                        TextField("xxxxxx", text: $frontNumber)
                            .multilineTextAlignment(.center)
                            .keyboardType(.numberPad)
                        
                        Text("-")
                        
                        TextField("xxxxxxx", text: $rearNumber)
                            .multilineTextAlignment(.center)
                            .keyboardType(.numberPad)
                    } // HStack
                    Divider()
                        .padding(.bottom)
                }
                
                Group {
                    Divider()
                        .padding(.top)
                    
                    Menu {
                        ForEach(0..<telecomList.count) { index in
                            Button {
                                selectedTelecom = telecomList[index]
                            } label: {
                                if selectedTelecom == telecomList[index] {
                                    HStack {
                                        Text(telecomList[index])
                                        Spacer()
                                        Image(systemName: "checkmark")
                                    }
                                } else {
                                    Text(telecomList[index])
                                }
                            }
                        }
                    } label: {
                        HStack {
                            Text(selectedTelecom)
                            Spacer()
                            Image(systemName: "chevron.down")
                        } // HStack
                        .padding(.horizontal, 5)
                        .padding(.vertical, 5)
                    }
                    
                    Divider()
                    
                    HStack {
                        TextField(phoneNumber, text: $phoneNumber)
                            .customTextField(padding: 5, lineWidth: 0)
                        Button {
                            clickedAuth = true
                            msgWasSent = true
                        } label: {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.accentColor)
                                .overlay(Text("인증하기")
                                            .foregroundColor(.black))
                                .frame(maxWidth: 90, maxHeight: 35)
                            
                        }
                    }
                    Divider()
                }
                
                Group {
                    HStack {
                        TextField("인증번호 입력", text: $authNumber)
                            .multilineTextAlignment(.center)
                            
                        Button {
                            
                        } label: {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.accentColor)
                                .overlay(Text("확인")
                                            .foregroundColor(.black))
                                .frame(maxWidth: 90, maxHeight: 35)
                            
                        }
                    }
                    
                    Divider()
                    
                    HStack {
                        if msgWasSent {
                            Text("인증번호가 발송되었습니다.")
                                .font(.system(size: 12))
                            
                        } else {
                            Text("")
                        }
                        Spacer()
                    }
                }
             
                Spacer()
            } // VStack
            .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.8))
            
            if clickedAuth {
                Color.gray.opacity(0.8).ignoresSafeArea(.all)
                AlertView(shown: $clickedAuth, isSuccess: clickedAuth, message: "인증번호가 발송되었습니다.", title: "발송 완료", themeColor: Color.accentColor)
            }
        } // ZStack
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: CustomBackButton(firstText: "아이디 찾기"))
    }
}

struct PhoneNumberAuth_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumberAuth()
    }
}
