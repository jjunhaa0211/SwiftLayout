//
//  ZStack1View.swift
//  SwiftUILayout
//
//  Created by 박준하 on 10/30/23.
//
import SwiftUI

struct ZStack1View: View {
    var body: some View {
      ZStack {
            Text("준하")
                .background(.red)
                .font(.system(size: 100.0))
            Text("바악준하")
                .background(.yellow)
                .font(.system(size: 40.0))
            Text("바악주아하")
                .background(.blue)
        }
    }
}

#Preview {
    ZStack1View()
}
