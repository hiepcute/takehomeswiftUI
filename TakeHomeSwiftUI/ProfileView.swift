//
//  ProfileView.swift
//  TakeHomeSwiftUI
//
//  Created by MACBOOK on 6/3/25.
//

import SwiftUI

struct ProfileView: View {
    @State var imageProfile: String
    @State var userName: String
    @State var subtitle: String
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(maxWidth: .infinity,maxHeight: 120)
                .shadow(radius: 5)
                .overlay(
                    HStack(spacing: 10){
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(lineWidth: 0.8)
                        .frame(width: 100, height: 100)
                        .overlay(
                           Circle()
                            .stroke(lineWidth: 0.8)
                            .padding(5)
                            .overlay(
                                Image(systemName: "person.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 60, height: 60)
                            )
                        )
                        .padding(.leading,10)
                        VStack(alignment: .leading){
                            Text(" abc")
                                .font(.title2)
                                .fontWeight(.medium)
                                .padding(.top, 10)
                            Divider()
                            Text("abc")
                            Spacer()
                        }
                        
                    }

                    
                       
                )
                .padding(.horizontal, 20)
                    
                
            
        }
    }
}

#Preview {
    ProfileView()
}
