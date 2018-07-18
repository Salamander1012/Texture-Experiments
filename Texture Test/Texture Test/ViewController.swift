//
//  ViewController.swift
//  Texture Test
//
//  Created by Salman Fakhri on 7/17/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import UIKit
import AsyncDisplayKit

class ViewController: ASViewController<ASDisplayNode> {
    
    //MARK: Lifecycle
    
    init() {
//        super.init(node: ASTableNode())
        super.init(node: SampleView())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        node.delegate = self
//        node.dataSource = self
    }
}

// MARK: ASTableDelegate, ASTableDataSource

extension ViewController: ASTableDelegate, ASTableDataSource {
    
    func tableNode(_ tableNode: ASTableNode, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
//    func tableNode(_ tableNode: ASTableNode, nodeForRowAt indexPath: IndexPath) -> ASCellNode {
//        let cell = SampleCell()
//        return cell
//    }
    
    
    func tableNode(_ tableNode: ASTableNode, nodeBlockForRowAt indexPath: IndexPath) -> ASCellNodeBlock {
        let cell = SampleCell()
        let nodeBlock: ASCellNodeBlock = { 
            return SampleCell()
        }
        return nodeBlock
    }
    
}

