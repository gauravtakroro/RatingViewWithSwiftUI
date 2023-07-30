//
//  ShowEmojiRatingView.swift
//  RatingViewUsingSwiftUI
//
//  Created by Gaurav Tak on 30/07/23.
//

import SwiftUI

struct ShowEmojiRatingView: View {
    @State var rating = Int.random(in: 1...5)
    var body: some View {
        NavigationView {
            VStack {
                Text("Current Rating is \(rating)").padding(.horizontal, 32)
                EmojiRatingView(rating: $rating).padding(.top, 16)
                Button {
                    rating = Int.random(in: 1...5)
                } label: {
                    Text("Regenerate rating value and update UI")
                }.padding(.top, 32)
            }
        }
    }
}

struct ShowEmojiRatingView_Previews: PreviewProvider {
    static var previews: some View {
        ShowEmojiRatingView()
    }
}

