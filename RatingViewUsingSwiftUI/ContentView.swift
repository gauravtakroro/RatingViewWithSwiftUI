//
//  ContentView.swift
//  RatingViewUsingSwiftUI
//
//  Created by Gaurav Tak on 30/07/23.
//

import SwiftUI

struct ContentView: View {
    @State var showRatingViewBottomSheet = false
    @State var showEmojiRatingViewBottomSheet = false
    @State var showEmojiRatingView2BottomSheet = false
    @State var showRatingViewWithFraction = false
    
    var body: some View {
        VStack {
            Text("Rating View Demo")
            Button {
               showRatingViewBottomSheet = true
            } label: {
                Text("Show Rating View")
            }.padding(.top, 16)
            Button {
                showEmojiRatingViewBottomSheet = true
            } label: {
                Text("Show Emoji Rating View")
            }.padding(.top, 16)
            Button {
                showEmojiRatingView2BottomSheet = true
            } label: {
                Text("Show Emoji Rating View with User Interaction")
            }.padding(.top, 16)
            Button {
                showRatingViewWithFraction = true
            } label: {
                Text("Show Star Rating View with Fraction")
            }.padding(.top, 16)
        }
        .padding()
        .sheet(isPresented: $showRatingViewBottomSheet)  {
            ShowRatingView()
                 .padding(.top)
         }
        .sheet(isPresented: $showEmojiRatingViewBottomSheet)  {
             ShowEmojiRatingView()
                  .padding(.top)
          }
        .sheet(isPresented: $showEmojiRatingView2BottomSheet)  {
             ShowEmojiRatingView2()
                  .padding(.top)
          }
        .sheet(isPresented: $showRatingViewWithFraction)  {
             ShowRatingViewWithFraction()
                  .padding(.top)
          }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
