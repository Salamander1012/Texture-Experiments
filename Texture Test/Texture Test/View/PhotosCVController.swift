//
//  PhotosCollectionViewController.swift
//  Texture Test
//
//  Created by Salman Fakhri on 7/18/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import UIKit
import AsyncDisplayKit

class PhotosCVController: ASViewController<ASCollectionNode> {
    
    //MARK: Properties
    
    var flowLayout: UICollectionViewFlowLayout
    
    //MARK: Lifecycle
    
    init() {
        flowLayout = UICollectionViewFlowLayout()
        super.init(node: ASCollectionNode(collectionViewLayout: flowLayout))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
