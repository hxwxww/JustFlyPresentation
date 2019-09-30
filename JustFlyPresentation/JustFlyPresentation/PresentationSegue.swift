//
//  PresentationSegue.swift
//  JustFlyPresentation
//
//  Created by HongXiangWen on 2019/9/29.
//  Copyright © 2019 WHX. All rights reserved.
//

import Foundation

public class PresentationSegue: UIStoryboardSegue {
    
    public override func perform() {
        guard let destination = destination as? PresentationViewController else {
            fatalError("destination must comfirm to protocol PresentedViewType")
        }
        source.presentViewController(destination)
    }
    
}
