//
//  Cell.swift
//  testTableView_Xib
//
//  Created by 平野裕貴 on 2023/07/02.
//

import Foundation
struct Cell {
    let title: String
    let detail: String
}

struct Cell2 {
    let title: String
    let detail: String
}

let cells: [Cell] = [
    Cell(title: "タイトル1", detail: "詳細1"),
    Cell(title: "タイトル2", detail: "詳細2詳細2詳細2詳細2詳細2詳細2詳"),
    Cell(title: "タイトル3タイトル3タイトル3タイトル3タイ", detail: "詳細3"),
    Cell(title: "タイトル4タイトル4タイトル4タイトル4タ", detail: "詳細4詳細4詳細4詳細4詳細4詳細4詳細4詳細")
]

