//
//  HomeTableViewCell.swift
//  TesteTecnicoiOS
//
//  Created by Mariana Brasil on 23/11/22.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var profileImage: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 48 / 2
       return imageView
    }()
    
    lazy var decorationView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 8 / 2
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setUpView() {
        contentView.addSubview(profileImage)
        contentView.addSubview(nameLabel)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(decorationView)
        setUpConstraints()
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            profileImage.topAnchor.constraint(equalTo: contentView.topAnchor,
                                              constant: 16),
            profileImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,
                                                 constant: 16),
            profileImage.heightAnchor.constraint(equalToConstant: 48),
            profileImage.widthAnchor.constraint(equalToConstant: 48),
            nameLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor,
                                               constant: 8),
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor,
                                           constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,
                                                constant: -8),
            descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            descriptionLabel.leadingAnchor.constraint(equalTo: decorationView.trailingAnchor,
                                                     constant: 8),
            descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,
                                                       constant: -8),
            descriptionLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,
                                              constant: -16),
            decorationView.heightAnchor.constraint(equalToConstant: 8),
            decorationView.widthAnchor.constraint(equalToConstant: 8),
            decorationView.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor,
                                                     constant: 8),
            decorationView.centerYAnchor.constraint(equalTo: descriptionLabel.centerYAnchor)
            
        ])
    }
}
