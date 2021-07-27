//
//  Section_1.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/07/22.
//

import SwiftUI

struct Section_1: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("코시국, 힐링이 필요해")
                Image(systemName: "leaf")
                Spacer()
            }
            .font(Font.custom("NotoSansKR-Bold", size: 23))
            .font(.system(size: 23))
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(spacing: 30) {
                    VStack(alignment: .leading) {
                        Image("koreaTravelAgency")
                            .resizable().frame(width: 200, height: 150).padding(.bottom, 3)
                        
                        Text("[원주] 사내투어 + 영화관람")
                            .padding(.vertical)
                            
                        Text("75,000 Won ~")
                            .padding(.top)
                            .font(Font.custom("AdobeClean-Bold", size: 20))
                    }
                    .font(Font.custom("NotoSansKR-Bold", size: 15))
                    
                    VStack {
                        Image("koreaTravelAgency")
                            .resizable().frame(width: 200, height: 150).padding(.bottom, 3)
                        
                        Text("[원주] 사내투어 + 영화관람")
                            .padding(.vertical)
                        Text("75,000 Won ~")
                            .padding(.top)
                            .font(Font.custom("AdobeClean-Bold", size: 20))
                    }
                    .font(Font.custom("NotoSansKR-Bold", size: 15))
                    
                    VStack {
                        Image("koreaTravelAgency")
                            .resizable().frame(width: 200, height: 150).padding(.bottom, 3)
                        
                        Text("[원주] 사내투어 + 영화관람")
                            .padding(.vertical)
                        Text("75,000 Won ~")
                            .padding(.top)
                            .font(Font.custom("AdobeClean-Bold", size: 20))
                    }
                    .font(Font.custom("NotoSansKR-Bold", size: 15))
                } // HStack
            } // ScrollView
        } // VStack
        .frame(maxWidth: UIScreen.main.bounds.maxX - 40)
    }
}

struct Section_1_Previews: PreviewProvider {
    static var previews: some View {
        Section_1()
    }
}
