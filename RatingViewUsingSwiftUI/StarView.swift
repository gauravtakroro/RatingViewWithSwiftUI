//
//  StarView.swift
//  RatingViewUsingSwiftUI
//
//  Created by Gaurav Tak on 31/07/23.
//

import SwiftUI

struct StarView: View {
    var fillValue: Double
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: geometry.size.width * fillValue)
            }
        }
        .mask(
            Image(systemName: "star.fill")
                .resizable()
        )
        .aspectRatio(1, contentMode: .fit)
    }
}
