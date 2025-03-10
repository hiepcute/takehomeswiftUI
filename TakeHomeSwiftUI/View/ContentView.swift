//
//  ContentView.swift
//  TakeHomeSwiftUI
//
//  Created by MACBOOK on 15/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            VStack {
                headerView
                Spacer()
                ScrollView {
                    VStack {
                        ForEach(0..<20) { id in
                            ProfileView1(imageProfile: "person.fill", userName: "Hiep", subtitle: "dep trai")
                        }
                    }
                }
                
            }
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
