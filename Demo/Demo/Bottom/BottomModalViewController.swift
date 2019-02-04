//
//  BottomModalViewController.swift
//  Demo
//
//  Created by Fumiya Tanaka on 2019/02/03.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import UIKit

class BottomModalViewController: UIViewController {
    
    @IBOutlet var table: UITableView! {
        didSet {
            table.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension BottomModalViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = String(indexPath.row)
        return cell
    }
    
}
