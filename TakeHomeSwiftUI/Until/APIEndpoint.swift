//
//  APIEndpoint.swift
//  TakeHomeSwiftUI
//
//  Created by MACBOOK on 8/3/25.
//

import Foundation


struct APIEndPoint {
    static let baseURL = "https://api.github.com/users"
    
    static func userInformation(perPage: Int, since: Int) -> String {
        return "\(baseURL)?per_page=\(perPage)&since=\(since)"
    }
    
    static func followerUser(username: String) -> String {
        return "\(baseURL)/\(username)/followers"
    }
    
    static func followingUser(username: String) -> String {
        return "\(baseURL)/\(username)/following"
    }
    
    static func userDetails(username: String) -> String {
        return "\(baseURL)/\(username)"
    }
}
