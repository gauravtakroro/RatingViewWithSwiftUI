//
//  EmojiRatingView2.swift
//  RatingViewUsingSwiftUI
//
//  Created by Gaurav Tak on 30/07/23.
//

import SwiftUI

struct EmojiRatingView2: View {
    @State var rating: Int = Int.random(in: 1...5)

    var maximumRating = 5

    var offImage: Image?
    var onImage = Image(systemName: "star.fill")

    var offColor = Color.gray
    var onColor = Color.yellow

    var body: some View {
        HStack {
            ForEach(1..<maximumRating + 1, id: \.self) { number in

                getEmojiText(for: number)  .onTapGesture {
                        print("Rating Tapped \(number)")
                        rating = number
                }.opacity(number == rating ? 1.0 : 0.3)
            }
        }
    }

    func getEmojiText(for number: Int) -> Text {
        switch number {
        case 1:
            return Text("🙈")
        case 2:
            return Text("😔")
        case 3:
            return Text("🙂")
        case 4:
            return Text("😊")
        default:
            return Text("🤩")
        }
    }
}
