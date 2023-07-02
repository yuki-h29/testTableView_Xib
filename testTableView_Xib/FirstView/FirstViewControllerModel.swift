//
//  FirstViewControllerModel.swift
//  testTableView_Xib
//
//  Created by 平野裕貴 on 2023/07/02.
//

import Foundation

class FirstViewControllerModel {
    
    var delegate: FirstViewControllerModelDelegate!
    var countNumProvider: ProvidesCountNum?
    var cells: [Cell]
        
    init(cells: [Cell]) {
        self.cells = cells
    }
    
    // データを更新するメソッド
    func updateData() {
        // データが更新されたことをデリゲートに通知
        delegate?.modelDidUpdateData(self)
    }
    
    // 新しいデータを追加するメソッド
    func addData(newCell: Cell) {
        // データを追加
        cells.append(newCell)
        // データが更新されたことをデリゲートに通知
        delegate?.modelDidUpdateData(self)
    }
    
    // Cellの内容を変更するメソッドを追加
    func changeCellData() {
        guard let countNum = countNumProvider?.countNum else { return }
        cells = [
            Cell(title: "新しいタイトル\(countNum)", detail: "新しい詳細\(countNum)"),
            Cell(title: "新しいタイトル\(countNum+1)", detail: "新しい詳細\(countNum+1)"),
            // 以降、新しいデータを追加...
        ]
        
        // データが更新されたことをデリゲートに通知
        delegate?.modelDidUpdateData(self)
    }
    
    enum ButtonType {
        case tableButton
        case viewButton
    }
    
    func buttonTapped(_ buttonType: ButtonType) {
        switch buttonType {
        case .tableButton:
            // tableButtonが押された時の処理
            self.changeCellData()
            delegate?.showTableView()
        case .viewButton:
            // viewButtonが押された時の処理
            delegate?.showView()
        }
    }
    
    func updateCell(at index: Int, with cell: Cell) {
        guard cells.indices.contains(index) else { return }
        cells[index] = cell
        delegate?.modelDidUpdateData(self)
    }
}
