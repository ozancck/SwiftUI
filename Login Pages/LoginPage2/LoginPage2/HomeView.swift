//
//  HomeView.swift
//  LoginPage2
//
//  Created by Ozan Çiçek on 4.03.2023.
//

import SwiftUI

struct HomeView: View {
    @State var show = false
    var body: some View {
        NavigationStack {
            ZStack {
                
                List{
                    
                }
                
                .navigationDestination(isPresented: self.$show) {
                    SignUpView(show: self.$show)
                    Text("")
                        .hidden()
                }
                LoginView(show: self.$show)
            }

            .navigationTitle("")
            .toolbar(.hidden)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
