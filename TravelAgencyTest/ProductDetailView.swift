//
//  ProductDetailView.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/08/04.
//

import SwiftUI

struct ProductDetailView: View {
    @State var date = Date()
    
    var body: some View {
        VStack {
            Image("jeju")
                .resizable()
                .frame(height: 200)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("스탠다드")
                        
                    Text("출발확정")
                }
                Text("[KE7박8일] 아름다운 절경, 제주 해변 투어, 특가 상품!!")
                    .font(Font.custom("NotoSansKR-Bold", size: 23))
                
                DatePicker("출발일", selection: $date, displayedComponents: .date)
            }
            .frame(maxWidth: UIScreen.main.bounds.maxX - 40)
            Spacer()
            
        }
    }
}


struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
