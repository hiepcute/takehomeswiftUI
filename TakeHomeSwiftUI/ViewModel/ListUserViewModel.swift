//
//  ListUserViewModel.swift
//  TakeHomeSwiftUI
//
//  Created by MACBOOK on 8/3/25.
//

import Foundation

@MainActor

final class ListUserViewModel: ObservableObject {
    @Published var users: [UserCellModel] = []
    
    func fetchListUser(url: String)  {
        let header = ["Content-Type": "application/json;charset=utf-8"]
        guard let url = URL(string: url) else { return }
        Task {
            do {
                let userInformationModel: [UserInformationModel] = try await NetworkService(session: URLSession.shared).fetchData(from: url,headers: header, responseType: [UserInformationModel].self)
                users = userInformationModel.map {UserCellModel(imageViewURL: $0.avatar_url, name: $0.login)}
            } catch {
                print("error")
            }
        }
    }
}
