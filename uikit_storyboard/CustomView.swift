//
//  CustomView.swift
//  uikit_storyboard
//
//  Created by 안주환 on 2023/01/06.
//

import Foundation
import UIKit

//인터페이스 빌더에서 디자인으로 확인 가능
@IBDesignable
class CustomView: UIView {
    
    // 인스펙터 패널에서 사용 될 수 있도록 설정
    @IBInspectable
    var corerRadius : CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = corerRadius
        }
    }
    
    @IBInspectable
    var borderColor : UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable
    var borderWidth : CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    fileprivate var isSquare : Bool {
        get {
            return self.frame.width == self.frame.height
        }
    }
    
    @IBInspectable
    var isCircle : Bool = false {
        didSet {
            if isSquare && isCircle {
                self.layer.cornerRadius = self.frame.width / 2
            }
        }
    }
    
    @IBInspectable
    var hasShadow : Bool = false {
        didSet {
            if hasShadow {
                layer.applyShadow()
            }
        }
    }
    
//    /// 뷰 정사각형 여부
//    /// - Returns: 여부
//    fileprivate func isSquare() -> Bool {
//        return self.frame.width == self.frame.height
//    }
    
}
