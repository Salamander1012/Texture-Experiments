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
    
    init() {
        let viewNode = SampleView()
        super.init(node: viewNode)
    }
    
    override func viewDidLoad() {
        node.backgroundColor = .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

