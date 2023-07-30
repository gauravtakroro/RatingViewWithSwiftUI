//
//  ContentView.swift
//  RatingViewUsingSwiftUI
//
//  Created by Gaurav Tak on 30/07/23.
//

import SwiftUI

struct ContentView: View {
    @State var showRatingViewBottomSheet = false
    var body: some View {
        VStack {
            Text("Rating View Demo")
            Button {
               showRatingViewBottomSheet = true
            } label: {
                Text("Show Rating View")
            }.padding(.top, 32)
        }
        .padding().sheet(isPresented: $showRatingViewBottomSheet)  {
            ShowRatingView()
                 .padding(.top)
         }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
