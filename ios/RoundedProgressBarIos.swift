//
//  RoundedProgressBar.swift
//  RNRoundedProgressBar
//
//  Created by Alejo Castaño on 25/11/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation
import UIKit

class RoundedProgressBarIos: UIView {
  var circle = UIView(frame: CGRect(x: 0,y: 0, width: 100, height: 100))
  var circleShadow = UIView(frame: CGRect(x: 0,y: 0, width: 100, height: 100))
  
  var progressCircle = CAShapeLayer()
  var progressCircleShadow = CAShapeLayer()
  
  @objc(setProps:)
  func setProps(props: NSDictionary) {
    
    // Size
    let size = props["size"] as! CGFloat;
    let circlePath = UIBezierPath(arcCenter: CGPoint (x: circle.bounds.width / 2, y: circle.bounds.width / 2), radius: size, startAngle: CGFloat(-0.5 * Double.pi), endAngle: CGFloat(1.5 * Double.pi), clockwise: true)
    
    // Default props
    circle.layoutIfNeeded()
    circleShadow.layoutIfNeeded()
    
    progressCircle.path = circlePath.cgPath
    progressCircleShadow.path = circlePath.cgPath
    
    progressCircle.strokeStart = 0
    progressCircleShadow.strokeStart = 0
    
    // border width
    progressCircle.lineWidth = props["borderWidth"] as! CGFloat
    // border width shadow
    progressCircleShadow.lineWidth = props["backgroundWidth"] as! CGFloat
    
    // line color
    let customLineColor = UIColor(hexString: props["color"] as! String).cgColor
    progressCircle.strokeColor = customLineColor
    
    // line color shadow
    let customLineColorShadow = UIColor(hexString: props["shadowColor"] as! String).cgColor
    progressCircleShadow.strokeColor = customLineColorShadow
    
    // percent
    progressCircle.strokeEnd = props["percent"] as! CGFloat
    // percent shadow
    progressCircleShadow.strokeEnd = 1
    
    // background color
    let bgColor = props["bgColor"]
    let customBgColor = UIColor(hexString: bgColor as! String).cgColor
    progressCircle.fillColor = customBgColor
    // background color shadow
    progressCircleShadow.fillColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    
    circle.layer.addSublayer(progressCircle)
    circleShadow.layer.addSublayer(progressCircleShadow)
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.addSubview(circleShadow)
    self.addSubview(circle)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt32()
        Scanner(string: hex).scanHexInt32(&int)
        let a, r, g, b: UInt32
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}
