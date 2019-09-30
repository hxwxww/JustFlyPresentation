//
//  Notification+Presentation.swift
//  JustFlyPresentation
//
//  Created by HongXiangWen on 2019/9/30.
//  Copyright © 2019 WHX. All rights reserved.
//

import Foundation

extension Notification {
    
    /// 键盘frame
    public var keyboardEndFrame: CGRect? {
        return (userInfo?[UIApplication.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue
    }
    
    /// 键盘动画时间
    public var keyboardAnimationDuration: TimeInterval? {
        return (userInfo?[UIApplication.keyboardAnimationDurationUserInfoKey] as? NSNumber)?.doubleValue
    }
    
}
