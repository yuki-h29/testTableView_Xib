//
//  FirstViewControllerModelDelegate.swift
//  testTableView_Xib
//
//  Created by 平野裕貴 on 2023/07/02.
//

import Foundation

protocol FirstViewControllerModelDelegate: AnyObject {
    func modelDidUpdateData(_ model: FirstViewControllerModel)
    
    func showTableView()
    func showView()
}

protocol ProvidesCountNum {
    var countNum: Int { get set}
}
