//
//  AlertViewController.swift
//  JustFlyPresentationExample
//
//  Created by HongXiangWen on 2019/9/30.
//  Copyright © 2019 WHX. All rights reserved.
//

import UIKit
import JustFlyPresentation

class AlertViewController: UIViewController, PresentedViewType {
    
    var presentedViewComponent: PresentedViewComponent
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        presentedViewComponent = PresentedViewComponent(contentSize: CGSize(width: 260, height: 240))
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        presentedViewComponent = PresentedViewComponent(contentSize: CGSize(width: 260, height: 240))
        super.init(coder: aDecoder)
    }
    
    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
