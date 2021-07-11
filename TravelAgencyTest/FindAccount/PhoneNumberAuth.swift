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
    
    var body: some View {
        VStack(alignment: .center) {
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
            
        } // VStack
        .frame(maxWidth: (UIScreen.main.bounds.maxX * 0.8))
    }
}

struct PhoneNumberAuth_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumberAuth()
    }
}
