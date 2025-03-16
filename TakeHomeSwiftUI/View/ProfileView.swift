//
//  ProfileView.swift
//  TakeHomeSwiftUI
//
//  Created by MACBOOK on 6/3/25.
//

import SwiftUI

struct ProfileView: View {
    var imageProfileURl: String
    var userName: String
    var subtitle: String
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 0.8)
                .frame(width: 100, height: 100)
                .overlay(
                    AsyncImage(url: imageProfile, content: { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60,height: 60)
                            .clipShape(
                                Circle())
                            .background(
                                Circle().stroke(lineWidth: 1))
                        
                    }, placeholder: {
                        ProgressView()
                    })
                )
                        .padding(8)
                    
            Spacer()
            VStack(alignment: .leading) {
                Text(userName)
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(.top, 10)
                
                Divider()
                Text("linkedin.com")
                Spacer()
            }.padding(.leading,10)
            
        }
        .frame(maxWidth: .infinity)
        .frame(height: 100)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 0.5)
        )

        
    }
    
    var imageProfile: URL? {
        guard let imageURl = URL(string: imageProfileURl) else {
            return URL(string: "abc")
        }
        return imageURl
    }
}

#Preview {
    ProfileView(imageProfileURl: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fhoanghamobile.com%2Ftin-tuc%2Fanh-con-cho%2F&psig=AOvVaw03L1Vblhh38KPPTT7GK6ig&ust=1742226246882000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCOie-NX4jowDFQAAAAAdAAAAABAE", userName: "Hiep", subtitle: "dep trai")
}
