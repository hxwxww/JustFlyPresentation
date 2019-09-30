//
//  MainTableViewController.swift
//  JustFlyPresentationExample
//
//  Created by HongXiangWen on 2019/9/30.
//  Copyright © 2019 WHX. All rights reserved.
//

import UIKit
import JustFlyPresentation

class MainTableViewController: UITableViewController {

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 0 {
            let alertVC = getAlertVC()
            var component = PresentedViewComponent(contentSize: CGSize(width: 260, height: 240))
            if indexPath.row == 0 {
                component.destination = .center
                component.presentTransitionType = .translation(origin: .bottomOutOfLine)
            } else if indexPath.row == 1 {
                component.contentSize = CGSize(width: view.bounds.width, height: 300)
                component.destination = .bottomBaseline
            } else if indexPath.row == 2 {
                component.contentSize = CGSize(width: 300, height: view.bounds.height)
                component.destination = .leftBaseline
            } else if indexPath.row == 3 {
                component.destination = .rightBaseline
                component.contentSize = CGSize(width: 300, height: view.bounds.height)
            } else if indexPath.row == 4 {
                component.destination = .topBaseline
                component.contentSize = CGSize(width: view.bounds.width, height: 300)
            } else if indexPath.row == 5 {
                component.destination = .custom(center: CGPoint(x: view.bounds.width / 2, y: 400))
                component.presentTransitionType = .translation(origin: .custom(center: CGPoint(x: 0, y: 0)))
            }
            alertVC.component = component
            presentViewController(alertVC)
        } else if indexPath.section == 1 {
            let alertVC = getAlertVC()
            var component = PresentedViewComponent(contentSize: CGSize(width: 260, height: 240))
            if indexPath.row == 0 {
                component.destination = .center
                component.presentTransitionType = .crossDissolve
            } else if indexPath.row == 1 {
                component.destination = .center
                component.presentTransitionType = .flipHorizontal
            } else if indexPath.row == 2 {
                component.destination = .center
                component.presentTransitionType = .crossZoom
            } else if indexPath.row == 3 {
                component.destination = .center
                component.presentTransitionType = .custom(animation: CrossZoomAnimation(scale: 0.01, options: .spring(duration: 0.5, delay: 0, damping: 0.4, velocity: 10), origin: .center))
                component.dismissTransitionType = .crossZoom
            }
            alertVC.component = component
            presentViewController(alertVC)
        } else if indexPath.section == 2 {
            let inputVC = getInputVC()
            var component = PresentedViewComponent(contentSize: CGSize(width: 300, height: 300))
            if indexPath.row == 0 {
                component.destination = .custom(center: CGPoint(x: view.bounds.width / 2, y: 200))
                component.presentTransitionType = .translation(origin: .bottomOutOfLine)
                component.keyboardTranslationType = .unabgeschirmt(compress: true)
            } else if indexPath.row == 1 {
                component.destination = .custom(center: CGPoint(x: view.bounds.width / 2, y: 200))
                component.keyboardTranslationType = .unabgeschirmt(compress: false)
            } else if indexPath.row == 2 {
                component.contentSize = CGSize(width: view.bounds.width, height: 300)
                component.destination = .bottomBaseline
                component.keyboardTranslationType = .compressInputView
                component.keyboardPadding = 60
            }
            inputVC.component = component
            presentViewController(inputVC)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TranslationCenter" {
            let alertVC = segue.destination as! AlertViewController
            alertVC.component.destination = .center
            alertVC.component.presentTransitionType = .translation(origin: .bottomOutOfLine)
        } else if segue.identifier == "CrossDissolve" {
            let inputVC = segue.destination as! InputViewController
            var component = PresentedViewComponent(contentSize: CGSize(width: 300, height: 300))
            component.destination = .center
            component.presentTransitionType = .crossDissolve
            inputVC.component = component
        }
    }
    
    func getAlertVC() -> AlertViewController {
        return storyboard?.instantiateViewController(withIdentifier: "AlertViewController") as! AlertViewController
    }

    func getInputVC() -> InputViewController {
        return storyboard?.instantiateViewController(withIdentifier: "InputViewController") as! InputViewController
    }
}
