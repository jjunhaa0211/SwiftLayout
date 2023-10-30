//
//  VStack2View.swift
//  SwiftUILayout
//
//  Created by 박준하 on 10/30/23.
//

import SwiftUI

struct VStack2View: View {
    var body: some View {
        
       //alignment를 사용해서 왼쪽, 오른쪽, 아래, 위를 붙일 수 있음
        VStack(alignment: .trailing) {
            Text("박준하")
                .background(.red)
            Text("바악준하")
                .background(.yellow)
            Text("바악주아하")
                .background(.blue)
        }
       .frame(width: 300.0, height: 300.0)
        //frame이 늘어남
    }
}

#Preview {
    VStack1View()
}
