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
    
    var body: some View {
        VStack {
            TextField("예약자 성명", text: $name)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .textFieldStyle(.plain)
                .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.8) )
                .frame(height: (UIScreen.main.bounds.maxY * 0.1) / 2 )
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                .padding(.bottom, 5)

            
            TextField("예약번호(영문, 숫자 포함 12자리)", text: $reservationNumber)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .textFieldStyle(.plain)
                .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.8) )
                .frame(height: (UIScreen.main.bounds.maxY * 0.1) / 2)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                .padding(.bottom, 5)
            
            HStack {
                Text("연락처")
                    .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.15) )
                    .frame(height: (UIScreen.main.bounds.maxY * 0.1) / 2)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                    .padding(.bottom, 5)
                    .foregroundColor(.gray)
                
                TextField("ex) 01012345678", text: $reservationNumber)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(.plain)
                    .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.65) )
                    .frame(height: (UIScreen.main.bounds.maxY * 0.1) / 2)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                    .padding(.bottom, 5)
            } // HStack
            .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.8))
        } // VStack
    }
}

struct GuestView_Previews: PreviewProvider {
    static var previews: some View {
        GuestView()
    }
}
