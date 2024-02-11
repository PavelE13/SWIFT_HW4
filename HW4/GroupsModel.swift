//
//  GroupsModel.swift
//  HW4
//
//  Created by user on 10.02.2024.
//  Copyright © 2024 user. All rights reserved.
//

struct GroupsModel: Decodable{
    var responce: Groups
}

struct Groups: Decodable {
    var items: [Group]
}

struct Group: Decodable {
	var description: String?
	}
