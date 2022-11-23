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
        viewModel.viewController = self
        viewModel.fetchData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.model.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = viewModel.model[indexPath.row]
        let cell = UITableViewCell()
        cell.textLabel?.text = item.name
        return cell
    }
}

