//
//  HomeView.swift
//  JokesApp
//
//  Created by Ozan Çiçek on 11.03.2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = JokesViewModel()

    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .fill(Color.orange)
                    .ignoresSafeArea()

                VStack {
                    ForEach(viewModel.joke) { element in

                        SetupView(setup: element.setup)
                            .padding()

                        VStack {
                            Button {
                                viewModel.fetchJokes()
                            } label: {
                                Text("New Joke")
                            }
                            .padding()
                            .background(Color.red)
                            .clipShape(RoundedRectangle(cornerRadius: 44))
                            .padding()
                           

                            NavigationLink {
                                AnswerView(answer: element.punchline)
                            } label: {
                                Text("Answer")
                                    .modifier(ButtonModifier(buttonType: .secondary))
                            }
                        }
                    }
                }
            }

        }.onAppear {
            viewModel.fetchJokes()
        }
        .foregroundColor(.black)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
