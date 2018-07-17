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
    
    var titleLabel: ASTextNode {
        let label = ASTextNode()
        label.attributedText = NSAttributedString(string: "Hello World")
        return label
    }
    
    override init() {
        super.init()
        addSubnode(titleLabel)
    }
    
    override func didLoad() {
        
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        let centerSpec = ASCenterLayoutSpec(centeringOptions: .XY, sizingOptions: [], child: titleLabel)
        return centerSpec
    }
}
