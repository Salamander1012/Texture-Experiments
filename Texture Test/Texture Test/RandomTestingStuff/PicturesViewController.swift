//
//  PicturesViewController.swift
//  Texture Test
//
//  Created by Salman Fakhri on 9/8/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import UIKit
import AsyncDisplayKit

class PicturesViewController: ASViewController<ASCollectionNode> {
    
    init() {
        let layout = UICollectionViewLayout()
        let collectionNode = ASCollectionNode(frame: CGRect.zero, collectionViewLayout: layout)
        super.init(node: collectionNode)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
