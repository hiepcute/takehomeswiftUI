//
//  ContentView.swift
//  TakeHomeSwiftUI
//
//  Created by MACBOOK on 15/2/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ListUserViewModel()
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            VStack {
                headerView
                Spacer()
                List(viewModel.users) { user in
                    
                    ProfileView(imageProfileURl: user.imageViewURL, userName: user.name, subtitle: "")
                        .listRowBackground(Color.clear)
                        .listRowInsets(EdgeInsets())
                        .padding(.all, 10)
                        .onTapGesture {
                            
                        }
                }
                    
                }
                .listStyle(.plain)
               
            }
            .task {
                viewModel.fetchListUser(url: APIEndPoint.userInformation(perPage: 20, since: 100))
            }
        }
    }


#Preview {
    ContentView()
}

extension ContentView {
    var headerView: some View {
        HStack {
            Image(systemName: "arrow.backward")
                .font(.headline)
                .foregroundColor(.black)
                .frame(width: 50, height: 50)
            Spacer()
            Text("List View")
            Spacer()
            Image(systemName: "arrow.backward")
                .font(.headline)
                .foregroundColor(.black)
                .frame(width: 50, height: 50)
                .rotationEffect(Angle(degrees: 180))
            
        }
    }
}
