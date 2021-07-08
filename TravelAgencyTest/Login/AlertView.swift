//
//  AlertView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/07/06.
//

import SwiftUI

struct AlertView: View {
     
    @Binding var shown: Bool
    //@Binding var closureA: AlertAction?
    var isSuccess: Bool
    var message: String
    var title: String
    var themeColor: Color
    let customRedColor: Color = Color(red: 199/255, green: 124/255, blue: 121/255)
     
     var body: some View {
         VStack {
             // Image(isSuccess ? "check":"remove").resizable().frame(width: 50, height: 50).padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
             Text(title).foregroundColor(customRedColor).padding(.top)
             Spacer()
             Text(message).foregroundColor(Color.black)
             Spacer()
             HStack {
                 Button(action: {
                     shown.toggle()
                 }) {
                     Text("확인")
                         .foregroundColor(.white)
                         .frame(width: (UIScreen.main.bounds.maxX * 0.7), height: (UIScreen.main.bounds.maxY * 0.1) / 5)
                 }
                 .frame(width: (UIScreen.main.bounds.maxX * 0.7), height: (UIScreen.main.bounds.maxY * 0.1) / 5).padding(.vertical)
                 .background(themeColor)
                 .cornerRadius(15)
             }
             .padding(.bottom)
             
         } // VStack
         .frame(width: (UIScreen.main.bounds.width * 0.8), height: 250)
         .background(Color.white)
         .cornerRadius(12)
         .clipped()
         
     }
 }
