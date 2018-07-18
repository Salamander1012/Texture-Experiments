//
//  SampleView.swift
//  Texture Test
//
//  Created by Salman Fakhri on 7/17/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import Foundation
import AsyncDisplayKit

class SampleView: ASDisplayNode {
    
    let titleLabel = ASTextNode()
    
    override init() {
        super.init()
        
        let titleAttributes = [
            NSAttributedStringKey.foregroundColor : UIColor.black,
            NSAttributedStringKey.font : UIFont.boldSystemFont(ofSize: 15)
        ]
        titleLabel.attributedText = NSAttributedString(string: "Hello World", attributes: titleAttributes)
        addSubnode(titleLabel)
        
        backgroundColor = .lightGray
    }
    
    override func didLoad() {
        
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let centerSpec = ASCenterLayoutSpec(centeringOptions: .XY, sizingOptions: [], child: titleLabel)
        return centerSpec
    }
}
