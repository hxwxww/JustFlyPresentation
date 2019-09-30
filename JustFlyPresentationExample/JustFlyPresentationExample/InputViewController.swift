//
//  InputViewController.swift
//  JustFlyPresentationExample
//
//  Created by HongXiangWen on 2019/9/30.
//  Copyright © 2019 WHX. All rights reserved.
//

import UIKit
import JustFlyPresentation

class InputViewController: UIViewController, PresentedViewType, UITextFieldDelegate, UITextViewDelegate {
    
    var presentedViewComponent: PresentedViewComponent
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        presentedViewComponent = PresentedViewComponent(contentSize: CGSize(width: 300, height: 300))
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        presentedViewComponent = PresentedViewComponent(contentSize: CGSize(width: 300, height: 300))
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.cornerRadius = 5
    }
    
    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder()
            return false
        }
        return true
    }

}
