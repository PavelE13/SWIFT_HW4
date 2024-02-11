//
//  GroupCell.swift
//  HW4
//
//  Created by user on 10.02.2024.
//  Copyright © 2024 user. All rights reserved.
//

import UIKit

final class GroupCell: UITableViewCell {
    
    private var Label1: UILabel = {
        let label = UILabel()
        label.text = "Имя"
        label.textAlignment = .center
        label.textColor = .black
        label.backgroundColor = .white
        return label
    }()
    private var Label2: UILabel = {
        let label = UILabel()
        label.text = "Описаие"
        label.textAlignment = .center
        label.textColor = .black
        label.backgroundColor = .white
        return label
    }()
    
    private var circleView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .red
        view.layer.cornerRadius = 25
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        setupUI()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(Label1)
        contentView.addSubview(Label2)
        contentView.addSubview(circleView)
    }
    
    private func addConstraints() {
        Label1.translatesAutoresizingMaskIntoConstraints = false
        Label2.translatesAutoresizingMaskIntoConstraints = false
        circleView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            circleView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            circleView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            circleView.heightAnchor.constraint(equalToConstant: 50),
            circleView.widthAnchor.constraint(equalTo: circleView.heightAnchor),
            
            Label1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            Label1.leftAnchor.constraint(equalTo: circleView.rightAnchor, constant: 30),
            Label1.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10),
            
            Label2.topAnchor.constraint(equalTo: Label1.bottomAnchor, constant: 10),
            Label2.leftAnchor.constraint(equalTo: Label1.leftAnchor),
            Label2.rightAnchor.constraint(equalTo: Label1.rightAnchor),
            ])
    }
}
