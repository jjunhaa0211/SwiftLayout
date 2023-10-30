//
//  VStack1View.swift
//  SwiftUILayout
//
//  Created by 박준하 on 10/30/23.
//

import SwiftUI

struct VStack1View: View {
    var body: some View {
       VStack {
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
    VStack1View()
}
