//
//  Section_1.swift
//  TravelAgencyTest
//
//  Created by 심찬영 on 2021/07/22.
//

import SwiftUI

struct Section_1: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("코시국 힐링이 필요해")
                Image(systemName: "leaf")
            }
            .font(.title)

            
        }
    }
}

struct Section_1_Previews: PreviewProvider {
    static var previews: some View {
        Section_1()
    }
}
