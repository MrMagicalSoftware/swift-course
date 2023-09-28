//
//  Model.swift
//  RandomFox
//
//  Created by mr on 27/09/23.
//

import Foundation

// MARK: - WelcomeElement
struct WelcomeElement: Codable ,Identifiable {
    
    let id, user, text: String


    
    let status: Status
    let type: TypeEnum
    let deleted: Bool
    let createdAt, updatedAt: String
    let v: Int
    let source: String?
    let used: Bool?

    enum CodingKeys: String, CodingKey {
        case status
        case id = "_id"
        case user, text, type, deleted, createdAt, updatedAt
        case v = "__v"
        case source, used
    }
}

// MARK: - Status
struct Status: Codable {
    let verified: Bool?
    let sentCount: Int
}

enum TypeEnum: String, Codable  {
    case cat = "cat"
}

typealias Welcome = [WelcomeElement]
