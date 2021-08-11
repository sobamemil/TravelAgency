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
    
    var body: some View {
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
                
                DatePicker("출발일", selection: $date, in: Date()..., displayedComponents: .date)
                
                Text("가격문의")
            } // VStack
            .frame(maxWidth: UIScreen.main.bounds.maxX - 40)
            
            
            Button(action: {
//                    withAnimation {
//                        loginClicked.toggle()
//                    }
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
                Text("항공 정보")
                Divider()
                    .padding(.bottom)
                
                Text("호텔 정보")
                Divider()
                    .padding(.bottom)
                
                Text("여행 일정")
                Divider()
                    .padding(.bottom)
                
                Text("옵션")
                Divider()
                    .padding(.bottom)
                
                Text("여행 약관")
                Divider()
                    .padding(.bottom)
            }
            .frame(maxWidth: UIScreen.main.bounds.maxX - 40)
            .padding(.top)
            
            
            Spacer()
            
            
            
        }
    }
}


struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(price: 10)
    }
}
