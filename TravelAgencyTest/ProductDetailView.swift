//
//  ProductDetailView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/08/04.
//

import SwiftUI

struct ProductDetailView: View {
    @State var date = Date()
    @State var person = Int()
    
    var price: Int
    @State var reservationClicked: Bool

    var body: some View {

        ZStack {
            ScrollView {
                VStack {
                    Image("jeju")
                        .resizable()
                        .frame(height: 200)
                        .padding(.top)
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("스탠다드")
                                .foregroundColor(.red)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(.red, lineWidth: 1)
                                )
                            
                            
                            Text("출발확정")
                                .foregroundColor(.orange)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(.orange, lineWidth: 1)
                                )
                        } // HStack
                        .font(.system(size: 12))
                        .padding(.top)
                        
                        
                        Text("[KE7박8일] 아름다운 절경, 제주 해변 투어, 특가 상품!!")
                            .font(Font.custom("NotoSansKR-Bold", size: 23))
                        
                        DatePicker("출발일", selection: $date, in:  Date()..., displayedComponents: .date)
                            .environment(\.locale, Locale.init(identifier: "ko_KR"))
                        
                        Text("가격문의")
                    } // VStack
                    .frame(maxWidth: UIScreen.main.bounds.maxX - 40)
                    
                    
                    Button(action: {
                        withAnimation {
                            reservationClicked.toggle()
                        }
                    }) {
                        Text("예약하기")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                            .frame(width: (UIScreen.main.bounds.maxX * 0.8), height: (UIScreen.main.bounds.maxY * 0.1) / 5).padding(.vertical)
                        // .shadow(color: .black, radius: 4, x: 5, y: 5)
                    } // Login Button
                    .frame(width: (UIScreen.main.bounds.maxX * 0.8), height: (UIScreen.main.bounds.maxY * 0.1) / 5).padding(.vertical)
                    .background(Color.getThemeColor())
                    .cornerRadius(15)
                    .padding(.vertical)
                    
                    VStack(alignment: .leading) {
                        NavigationLink(destination: Text("항공 정보 화면")) {
                            Text("항공 정보")
                        }
                        
                        Divider()
                            .padding(.bottom)
                        
                        NavigationLink(destination: Text("호텔 정보 화면")) {
                            Text("호텔 정보")
                        }
                        Divider()
                            .padding(.bottom)
                        
                        NavigationLink(destination: Text("여행 일정 화면")) {
                            Text("여행 일정")
                        }
                        Divider()
                            .padding(.bottom)
                        
                        NavigationLink(destination: Text("옵션 화면")) {
                            Text("옵션")
                        }
                        Divider()
                            .padding(.bottom)
                        
                        NavigationLink(destination: Text("여행 약관 화면")) {
                            Text("여행 약관")
                        }
                        Divider()
                            .padding(.bottom)
                    }
                    .frame(maxWidth: UIScreen.main.bounds.maxX - 40)
                    .padding(.top)
                    
                    
                    Spacer()
                    
                } // VStack
                .foregroundColor(.black)
                
            } // ScrollView
            
            if reservationClicked {
                Color.gray.opacity(0.8).ignoresSafeArea(.all)
                AlertView(shown: $reservationClicked, isSuccess: true, message: "예약에 실패하였습니다.\n유선 연락 바랍니다.", title: "예약 실패", themeColor: .accentColor)
            }
        } // ZStack
    }
}


struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(price: 10, reservationClicked: false)
    }
}
