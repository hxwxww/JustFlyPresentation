# JustFlyPresentation
基于UIPresentationController的封装


![image](https://github.com/hxwxww/JustFlyPresentation/raw/master/screenshot.gif)


## 简单介绍

- 基于UIPresentationController的封装，支持多种转场效果，还可轻松自定义转场动画

- CocoaPods:
```
    pod 'JustFlyPresentation'
```

- 使用方法：

需要present的ViewController遵守PresentedViewType协议即可：
```
class AlertViewController: UIViewController, PresentedViewType {

    var component: PresentedViewComponent

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        component = PresentedViewComponent(contentSize: CGSize(width: 260, height: 240))
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    required init?(coder aDecoder: NSCoder) {
        component = PresentedViewComponent(contentSize: CGSize(width: 260, height: 240))
        super.init(coder: aDecoder)
    }
}
```
要自定义转场效果及其他，只需要设置component即可：
```
    ....
    
    component.destination = .center
    component.presentTransitionType = .custom(animation: CrossZoomAnimation(scale: 0.01, options: .spring(duration: 0.5, delay: 0, damping: 0.4, velocity: 10), origin: .center))
    component.dismissTransitionType = .crossZoom
    component.keyboardTranslationType = .compressInputView
    component.keyboardPadding = 60

    ....
```

更具体的用法请下载 Demo 查看。
