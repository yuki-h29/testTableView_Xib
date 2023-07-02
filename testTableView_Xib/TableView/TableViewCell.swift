//
//  TableViewCell.swift
//  testTableView_Xib
//
//  Created by 平野裕貴 on 2023/07/02.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "TableViewCell"
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var detail: UILabel!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    static func nib() -> UINib {
        return UINib(nibName: TableViewCell.reuseIdentifier, bundle: nil)
    }

    // セルのタイトルと詳細を設定するメソッドです。
    func bind(title: String, detail: String) {
        self.title.text = title
        self.detail.text = detail
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
