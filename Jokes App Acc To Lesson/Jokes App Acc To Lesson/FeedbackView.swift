//
//  FeedbackView.swift
//  Jokes App Acc To Lesson
//
//  Created by Ang Jun Ray on 29/5/21.
//

import SwiftUI

struct FeedbackView: View {
    var isPositive: Bool
    var body: some View {
        VStack{
            Image(isPositive ? "happy" : "sad")
                .resizable(resizingMode: .stretch)
                .ignoresSafeArea()
            Text(isPositive ? "Thanks, here is a cookie!" : "U bad bad")
                .padding()
        }
    }
}

struct FeedbackView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackView(isPositive: true)
        FeedbackView(isPositive: false)
    }
}
