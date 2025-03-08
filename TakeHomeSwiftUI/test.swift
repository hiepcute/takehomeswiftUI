import SwiftUI

struct ProfileView1: View {
    @State var imageProfile: String
    @State var userName: String
    @State var subtitle: String
    
    var body: some View {
        HStack(spacing: 10) {
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 0.8)
                .frame(width: 100, height: 100)
                .overlay(
                    Circle()
                        .stroke(lineWidth: 0.8)
                        .padding(5)
                        .overlay(
                            Image(systemName: imageProfile)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                        )
                )
                .padding(.leading, 15)
            
            VStack(alignment: .leading) {
                Text(userName)
                    .font(.title2)
                    .fontWeight(.medium)
                    .padding(.top, 10)
                Divider()
                Link("https://www.linkedin.com/", destination: URL(string: "https://www.linkedin.com/")!)
                    .font(.subheadline)
                    .foregroundColor(.blue)
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 120)
        .padding(.vertical, 10)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .shadow(radius: 5)
        )
        .padding(.horizontal, 20)
    
    }
}

#Preview {
    ProfileView1(imageProfile: "person.fill", userName: "abxc", subtitle: "")
}
