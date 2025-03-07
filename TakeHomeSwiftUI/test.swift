import SwiftUI

struct GitHubUserView: View {
    var body: some View {
        VStack {
            Text("Github user")
                .font(.headline)
                .padding(.bottom, 5)
            
            // Hình chữ nhật bo góc bao quanh
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(width: 300, height: 120)
                .shadow(radius: 5)
                .overlay(
                    HStack(spacing: 15) {
                        // Hình vuông chứa hình tròn
                        ZStack {
                            Rectangle()
                                .fill(Color.gray.opacity(0.2))
                                .frame(width: 80, height: 80)
                                .cornerRadius(15)
                            
                            Circle()
                                .fill(Color.white)
                                .frame(width: 70, height: 70)
                                .overlay(
                                    Image(systemName: "person.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 60, height: 60)
                                )
                        }
                        
                        // Thông tin người dùng
                        VStack(alignment: .leading, spacing: 5) {
                            Text("jvantuyl")
                                .font(.headline)
                                .bold()
                            
                            Divider()
                            
                            Link("https://www.linkedin.com/", destination: URL(string: "https://www.linkedin.com/")!)
                                .font(.subheadline)
                                .foregroundColor(.blue)
                        }
                        
                        Spacer()
                    }
                    .padding(.horizontal, 15)
                )
        }
        .padding()
    }
}

#Preview {
    GitHubUserView()
}
