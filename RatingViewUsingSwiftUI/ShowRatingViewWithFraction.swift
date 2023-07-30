//
//  ShowRatingViewWithFraction.swift
//  RatingViewUsingSwiftUI
//
//  Created by Gaurav Tak on 31/07/23.
//

import SwiftUI

struct ShowRatingViewWithFraction: View {
    @State var rating = Double.random(in: 1...5)
    var maximumRating = 5
    var body: some View {
        NavigationView {
            VStack {
                Text("Current Rating is \(String(format: "%.2f", rating))").padding(.horizontal, 32)
                HStack {
                    ForEach(1..<maximumRating + 1, id: \.self) { number in
                        StarView(fillValue: (rating - Double(number)) < 0 && (rating - Double(number)) > -1 ? rating - Double(number-1) : ((rating - Double(number)) < 0 ? 0.0 : 1.0))
                    }
                }
                Button {
                    rating = Double.random(in: 1...5)
                } label: {
                    Text("Regenerate rating value and update UI")
                }.padding(.top, 32)
            }
        }
    }
}

struct ShowRatingViewWithFraction_Previews: PreviewProvider {
    static var previews: some View {
        ShowRatingViewWithFraction()
    }
}
