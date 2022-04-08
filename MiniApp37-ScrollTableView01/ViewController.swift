//
//  ViewController.swift
//  MiniApp37-ScrollTableView01
//
//  Created by 前田航汰 on 2022/04/08.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    private let totalCell = 100
    @IBOutlet private weak var tableView: UITableView!

    @IBAction private func didTapReturnButton(_ sender: Any) {
        tableView.setContentOffset(.zero, animated: true)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        totalCell
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row + 1):番目のCell"
        return cell
    }

}

