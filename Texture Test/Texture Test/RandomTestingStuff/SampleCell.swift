//
//  SampleCell.swift
//  Texture Test
//
//  Created by Salman Fakhri on 7/17/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import Foundation
import AsyncDisplayKit
import UIKit

class SampleCell: ASCellNode {
    
    //MARK: Properties
    
    let nameLabel = ASTextNode()
    let dateLabel = ASTextNode()
    
    //MARK: Lifecycle
    
    override init() {
        super.init()
        let nameAttributes = [
            NSAttributedStringKey.foregroundColor : UIColor.darkGray,
            NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 15)
        ]
        nameLabel.attributedText = NSAttributedString(string: "Hello World", attributes: nameAttributes)
        addSubnode(nameLabel)
        
        let dateAttributes = [
            NSAttributedStringKey.foregroundColor : UIColor.lightGray,
            NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 12)
        ]
        dateLabel.attributedText = NSAttributedString(string: "July 17th", attributes: dateAttributes)
        addSubnode(dateLabel)
        
    }
    
    //MARK: ASDisplayNode
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        
        let stackSpec = ASStackLayoutSpec(direction: .horizontal,
                                          spacing: 5.0,
                                          justifyContent: .spaceAround,
                                          alignItems: .center,
                                          children: [nameLabel, dateLabel])
        
        let insetSpec = ASInsetLayoutSpec(insets: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10), child: stackSpec)
        
        return insetSpec
        
    }
    

    
}
