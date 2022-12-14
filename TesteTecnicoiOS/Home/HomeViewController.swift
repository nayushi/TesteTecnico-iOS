//
//  HomeViewController.swift
//  TesteTecnicoiOS
//
//  Created by Mariana Brasil on 23/11/22.
//

import UIKit

class HomeViewController: UITableViewController {

    let viewModel: HomeViewModel = .init()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.register(HomeTableViewCell.self,
                           forCellReuseIdentifier: "cell")
        viewModel.viewController = self
        viewModel.fetchData()
    }

    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        return viewModel.model.count
    }

    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = viewModel.model[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? HomeTableViewCell else {
            fatalError()
        }
        cell.nameLabel.text = item.name
        cell.descriptionLabel.text = "\(item.status) - \(item.species)"
        switch item.status {
        case "Alive":
            cell.decorationView.backgroundColor = .systemGreen
        case "Dead":
            cell.decorationView.backgroundColor = .red
        default:
            cell.decorationView.backgroundColor = .gray
        }
        if let data = try? Data(contentsOf: URL(string: item.image)!) {
            cell.profileImage.image = UIImage(data: data)
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 72
    }
}

