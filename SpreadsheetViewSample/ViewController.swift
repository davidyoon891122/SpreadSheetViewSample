//
//  ViewController.swift
//  SpreadsheetViewSample
//
//  Created by jiwon Yoon on 2023/03/28.
//

import UIKit
import SpreadsheetView
import SnapKit

class ViewController: UIViewController {
    private lazy var spreadSheetView: SpreadsheetView = {
        let spreadsheetView = SpreadsheetView()
        spreadsheetView.dataSource = self
        
        return spreadsheetView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
}

extension ViewController: SpreadsheetViewDataSource {
    func spreadsheetView(_ spreadsheetView: SpreadsheetView, widthForColumn column: Int) -> CGFloat {
        return 80
    }
    
    func spreadsheetView(_ spreadsheetView: SpreadsheetView, heightForRow row: Int) -> CGFloat {
        return 40
    }
    
    func numberOfColumns(in spreadsheetView: SpreadsheetView) -> Int {
        return 3
    }
    
    func numberOfRows(in spreadsheetView: SpreadsheetView) -> Int {
        return 2
    }
}

private extension ViewController {
    func setupViews() {
        view.addSubview(spreadSheetView)
        
        spreadSheetView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide)
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
    }
}

