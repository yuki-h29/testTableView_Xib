//
//  FirstViewController.swift
//  testTableView_Xib
//
//  Created by 平野裕貴 on 2023/07/02.
//

import UIKit

class FirstViewController: UIViewController,ProvidesCountNum {
    
    var model: FirstViewControllerModel!
    var countNum: Int = 0 {
        didSet {
            model.changeCellData()
        }
    }
        
    @IBOutlet weak var LabelView: UIView!
    @IBOutlet weak var tableView: UITableView!

    
   
    
    init(model: FirstViewControllerModel!) {
        super.init(nibName: nil, bundle: nil)
        self.model = model
        self.model.delegate = self
        self.model.countNumProvider = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    
    @IBAction func tableButtonTapped(_ sender: Any) {
        countNum += 1
        model.buttonTapped(.tableButton)
    }
    
    @IBAction func viewButtonTapped(_ sender: Any) {
        model.buttonTapped(.viewButton)
    }
    
    private func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100  // 適当な推定値
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.reuseIdentifier)
    }
    
}
