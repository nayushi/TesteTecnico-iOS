//
//  HomeViewModel.swift
//  TesteTecnicoiOS
//
//  Created by Mariana Brasil on 23/11/22.
//

import UIKit

final class HomeViewModel {

    var viewController: UITableViewController?

    var model: [Character] = []

    func fetchData() {
        Networker.fetchData { [weak self] response, error in
            if let response = response {
                self?.model = response.results
                self?.viewController?.tableView.reloadData()
            }
        }
    }
}
