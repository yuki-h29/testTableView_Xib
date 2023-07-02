//
//  FirstViewController+TableViewDelegate.swift
//  testTableView_Xib
//
//  Created by 平野裕貴 on 2023/07/02.
//

import Foundation
import UIKit

extension FirstViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.reuseIdentifier, for: indexPath) as? TableViewCell else {
            fatalError("The dequeued cell is not an instance of TableViewCell.")
        }
        
        let cellModel = model.cells[indexPath.row]
        cell.bind(title: cellModel.title, detail: cellModel.detail)
        
        return cell
    }
    
    func modelDidUpdateData(_ model: FirstViewControllerModel) {
       DispatchQueue.main.async {
           self.tableView.reloadData()
       }
   }
}
