//
//  AnswerViews.swift
//  JokesApp
//
//  Created by Ozan Çiçek on 11.03.2023.
//

import SwiftUI

struct AnswerView: View {
    @State var answer: String

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.red)
                .ignoresSafeArea()

            ZStack {
                Circle()
                    .fill(Color.white)
                    .padding()

                Text(answer)
                    .foregroundColor(.black)
                    .font(.largeTitle)
                    .bold()
            }
        }
    }
}

struct AnswerView_Previews: PreviewProvider {
    static var previews: some View {
        AnswerView(answer: "ozan")
    }
}
