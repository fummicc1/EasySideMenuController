//
//  RightModalViewController.swift
//  Demo
//
//  Created by Fumiya Tanaka on 2019/02/03.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import UIKit

class RightModalViewController: UIViewController {

    @IBOutlet var table: UITableView! {
        didSet {
            table.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension RightModalViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "右" + String(indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    
}
