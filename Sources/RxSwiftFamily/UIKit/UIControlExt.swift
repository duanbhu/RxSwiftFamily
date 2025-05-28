//
//  UIControlExtension.swift
//  Posthouse_iOS
//
//  Created by Duanhu on 2023/8/22.
//

import UIKit
import RxSwift
import RxCocoa
import NSObject_Rx
import RxGesture

public extension UIControl {
    @discardableResult
    func rxTapClosure(_ time: DispatchTimeInterval = .microseconds(100), callback:(@escaping() -> ())) -> Self {
        self.rx.controlEvent(.touchUpInside).debounce(time, scheduler: MainScheduler.instance).bind {
            callback()
        }.disposed(by: rx.disposeBag)
        return self
    }
}

public extension Reactive where Base: UIView {
    func tap() -> Observable<Void> {
        return tapGesture().when(.recognized).mapToVoid()
    }
}

