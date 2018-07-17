//
//  SampleCell.swift
//  Texture Test
//
//  Created by Salman Fakhri on 7/17/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import Foundation
import AsyncDisplayKit

class SampleCell: ASCellNode {
    
    var name: ASTextNode
    var location: ASTextNode
    
    init(nameNode: ASTextNode, locationNode: ASTextNode) {
        name = nameNode
        location = locationNode
        super.init()
    }
    
    override func didLoad() {
        
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        
        
        return ASWrapperLayoutSpec(layoutElement: name)
    }
    
    override func layout() {
        
    }
    
    
}
