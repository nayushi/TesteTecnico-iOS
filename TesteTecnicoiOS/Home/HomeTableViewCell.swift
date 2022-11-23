//
//  HomeTableViewCell.swift
//  TesteTecnicoiOS
//
//  Created by Mariana Brasil on 23/11/22.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
