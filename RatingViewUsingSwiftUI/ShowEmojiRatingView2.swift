//
//  ShowEmojiRatingView2.swift
//  RatingViewUsingSwiftUI
//
//  Created by Gaurav Tak on 30/07/23.
//

import SwiftUI

struct ShowEmojiRatingView2: View {
    @State var rating = Int.random(in: 1...5)
    var body: some View {
        NavigationView {
            VStack {
                Text("The rating is randomly generated, You can update rating by tapping").padding(.horizontal, 32)
                EmojiRatingView2().padding(.top, 32)
            }
        }
    }
}


struct ShowEmojiRatingView2_Previews: PreviewProvider {
    static var previews: some View {
        ShowEmojiRatingView2()
    }
}



