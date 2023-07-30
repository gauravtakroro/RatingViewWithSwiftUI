//
//  ShowRatingView.swift
//  RatingViewUsingSwiftUI
//
//  Created by Gaurav Tak on 30/07/23.
//

import SwiftUI

struct ShowRatingView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Text("the rating is randomly generated, You can update rating by tapping").padding(.horizontal, 32)
                RatingView().padding(.top, 32)
            }
        }
    }
}

struct ShowRatingView_Previews: PreviewProvider {
    static var previews: some View {
        ShowRatingView()
    }
}

