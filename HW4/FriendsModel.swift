//
//  FriedsModel.swift
//  HW4
//
//  Created by user on 10.02.2024.
//  Copyright © 2024 user. All rights reserved.
//

struct FriendsModel: Decodable {
	var response: Friends
}

struct Friends: Decodable {
    var items: [Friend]
}

struct Friend: Decodable {
	var id: Int
	var firstNamet: String?
	var lastNamet: String?
	var photo: String?
	var online: Int?
	
	enum CodingKeys: String, CodingKey {
		case id
		case firstNamet = "first_name"
		case lastNamet = "last_name"
		case photo = "photo_50"
		case online
	}
}
