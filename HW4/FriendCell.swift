//
//  FriendCell.swift
//  HW4
//
//  Created by user on 10.02.2024.
//  Copyright © 2024 user. All rights reserved.
//

import UIKit

final class FriendCell: UITableViewCell {
    
    private var friendImageView = UIImageView(image: UIImage(systemName: "Person"))
    private var text: UILabel = {
        let label = UILabel()
        label.text = "Имя"
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    /*private var Label2: UILabel = {
        let label = UILabel()
        label.text = "Описаие"
        label.textAlignment = .center
        label.textColor = .black
        label.backgroundColor = .white
        return label
    }()*/
    
    private var onlineCircle: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.layer.cornerRadius = 10
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        SetupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(text)
        //contentView.addSubview(Label2)
        contentView.addSubview(onlineCircle)
    }
    
    func updareCell(model: Friend) {
        text.text = (model.firstName ?? "") + " " + (model.lastName ?? "")
        if let online = model.online {
            let isOnline = online == 1
            if isOnline {
                onlineCircle.backgroundColor = .green
            } else {
                onlineCircle.backgroundColor = .red
            }
        }
        DispatchQueue.global().async {
            if let url = URL(string: model.photo ?? ""), let data = try? Data(contentsOf: url) {
                DispatchQueue.main.async {
                    self.friendImageView.image = UIImage (data: data)
                }
            }
        }
    }
    
    private func SetupViews() {
        contentView.addSubview(friendImageView)
        contentView.addSubview(text)
        friendImageView.addSubview(onlineCircle)
        setupConstraints()
    }
    
    private func setupConstaints() {
        
    }
}
