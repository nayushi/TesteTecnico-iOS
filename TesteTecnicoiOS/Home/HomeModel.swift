//
//  HomeModel.swift
//  TesteTecnicoiOS
//
//  Created by Mariana Brasil on 23/11/22.
//

struct Results: Codable {
    let results: [Character]
}

struct Character: Codable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
