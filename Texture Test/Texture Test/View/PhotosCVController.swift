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
    
    var layout: MosaicCollectionViewLayout
    let layoutInspector = MosaicCollectionViewLayoutInspector()
    
    let collectionNode: ASCollectionNode
    
    var photos = [#imageLiteral(resourceName: "fancy"), #imageLiteral(resourceName: "yellow girl"), #imageLiteral(resourceName: "white girl"), #imageLiteral(resourceName: "cool"), #imageLiteral(resourceName: "road"), #imageLiteral(resourceName: "room"), #imageLiteral(resourceName: "thinking"), #imageLiteral(resourceName: "lamp"), #imageLiteral(resourceName: "thinking"), #imageLiteral(resourceName: "yellow girl"), #imageLiteral(resourceName: "white girl"), #imageLiteral(resourceName: "room")] 
    
    //MARK: Lifecycle
    
    init() {
        layout = MosaicCollectionViewLayout()
        layout.numberOfColumns = 2
        collectionNode = ASCollectionNode(collectionViewLayout: layout)
        super.init(node: collectionNode)
        layout.delegate = self
        
        collectionNode.backgroundColor = .white
        collectionNode.dataSource = self
        collectionNode.delegate = self
        collectionNode.layoutInspector = layoutInspector
        collectionNode.registerSupplementaryNode(ofKind: UICollectionElementKindSectionHeader)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionNode.view.isScrollEnabled = true
        navigationItem.title = "Pinterest"
    }
}

//MARK: MosaicCollectionViewLayoutDelegate
extension PhotosCVController: MosaicCollectionViewLayoutDelegate {
    func collectionView(_ collectionView: UICollectionView, layout: MosaicCollectionViewLayout, originalItemSizeAtIndexPath: IndexPath) -> CGSize {
        return photos[originalItemSizeAtIndexPath.item].size
    }
    
    
}

//MARK: ASCollectionDelegate, ASCollectionDataSource
extension PhotosCVController: ASCollectionDelegate, ASCollectionDataSource {
    func collectionNode(_ collectionNode: ASCollectionNode, nodeForItemAt indexPath: IndexPath) -> ASCellNode {
        let image = photos[indexPath.item]
        return ImageCellNode(with: image)
    }
    
    func numberOfSections(in collectionNode: ASCollectionNode) -> Int {
        return 1
    }
    
    func collectionNode(_ collectionNode: ASCollectionNode, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionNode(_ collectionNode: ASCollectionNode, didDeselectItemAt indexPath: IndexPath) {
        print("selected Item")
    }
}
