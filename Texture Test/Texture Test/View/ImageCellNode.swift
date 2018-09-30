//
//  ImageCellNode.swift
//  Texture Test
//
//  Created by Salman Fakhri on 9/8/18.
//  Copyright © 2018 Salman Fakhri. All rights reserved.
//

import Foundation
import AsyncDisplayKit

class ImageCellNode: ASCellNode {
    let imageNode = ASImageNode()
    required init(with image : UIImage) {
        super.init()
        imageNode.image = image
        imageNode.cornerRoundingType = ASCornerRoundingType.precomposited
        imageNode.cornerRadius = 10.0
        self.addSubnode(self.imageNode)
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        var imageRatio: CGFloat = 0.5
        if imageNode.image != nil {
            imageRatio = (imageNode.image?.size.height)! / (imageNode.image?.size.width)!
        }
        
        let imagePlace = ASRatioLayoutSpec(ratio: imageRatio, child: imageNode)
        
        let stackLayout = ASStackLayoutSpec.horizontal()
        stackLayout.justifyContent = .start
        stackLayout.alignItems = .start
        stackLayout.style.flexShrink = 1.0
        stackLayout.children = [imagePlace]
        
        return  ASInsetLayoutSpec(insets: UIEdgeInsets.zero, child: stackLayout)
    }
    
}
