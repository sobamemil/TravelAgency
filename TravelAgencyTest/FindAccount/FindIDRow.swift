//
//  FindIDRow.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/07/08.
//

import SwiftUI

struct FindIDRow: View {
    let index: Int
    let textList: Array<String> = ["휴대폰 본인인증", "실명인증", "이메일 본인인증"]
    
    var body: some View {
//        NavigationLink(destination: Text(textList[index]) ) {
//            HStack {
//                Text(textList[index])
//                Spacer()
//            }
//        }
        
        NavigationLink(destination: PhoneNumberAuth() ) {
            HStack {
                Text(textList[index])
                Spacer()
            }
        }
    }
}
