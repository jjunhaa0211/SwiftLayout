//
//  HStack2View.swift
//  SwiftUILayout
//
//  Created by 박준하 on 10/30/23.
//

import SwiftUI

struct HStack2View: View {
    var body: some View {
        HStack(spacing: 0) {
            Text("박준하")
                .background(.red)
            Text("바악준하")
                .background(.yellow)
            Text("바악주아하")
                .background(.blue)
        }
    }
}

#Preview {
    HStack1View()
}
