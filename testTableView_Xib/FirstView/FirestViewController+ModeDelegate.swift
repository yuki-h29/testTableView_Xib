//
//  FirestViewController+ModeDelegate.swift
//  testTableView_Xib
//
//  Created by 平野裕貴 on 2023/07/02.
//

import Foundation

extension FirstViewController: FirstViewControllerModelDelegate {
    
    // テーブルビューを表示し、LabelViewを非表示にします。
    func showTableView() {
        self.tableView.isHidden = false
        self.LabelView.isHidden = true
    }
    
    // LabelViewを表示し、tableViewを非表示にします。
    func showView() {
        self.tableView.isHidden = true
        self.LabelView.isHidden = false
    }
}
