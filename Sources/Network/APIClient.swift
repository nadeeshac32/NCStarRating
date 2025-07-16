//
//  APIClient.swift
//  NCStarRating
//
//  Created by Nadeesha Chandrapala on 16/07/2025.
//
import CoreModels

public struct APIClient {
    public init() {}

    public func fetchUser() -> User {
        return User(id: 1, name: "Nadeesha")
    }
}

