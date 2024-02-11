//
//  PhotosModel.swift
//  HW4
//
//  Created by user on 10.02.2024.
//  Copyright © 2024 user. All rights reserved.
//

struct PhotosModel: Decodable {
	var response: Photos
}

struct Photos: Decodable {
    var items: [Photo]
}

struct Photo: Decodable {
	var id: Int
	var text: String?
	var sizes: [Sizes]
}

struct Sizes: Codable {
	var url: String
}
