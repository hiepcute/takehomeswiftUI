//
//  ProfileView.swift
//  TakeHomeSwiftUI
//
//  Created by MACBOOK on 6/3/25.
//

import SwiftUI

struct ProfileView: View {
    var imageProfile: String
    var userName: String
    var subtitle: String
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 0.8)
                .frame(width: 100, height: 100)
                .overlay(
                    Circle()
                        .stroke(lineWidth: 0.8)
                        .overlay(
                            Image(systemName: "person.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                        )
                        .padding(8)
                    
                )
            Spacer()
            VStack(alignment: .leading) {
                Text("abc")
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(.top, 10)
                
                Divider()
                Text("abc")
                Spacer()
            }.padding(.leading,10)
            
        }
        .frame(maxWidth: .infinity, maxHeight: 120)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 0.5)
        )
        .padding(10)
        
    }
}

#Preview {
    ProfileView(imageProfile: "person.fill", userName: "Hiep", subtitle: "dep trai")
}
