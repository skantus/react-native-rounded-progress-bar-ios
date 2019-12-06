//
//  RoundedProgressBar.swift
//  RNRoundedProgressBar
//
//  Created by Alejo Castaño on 25/11/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//
import UIKit

class RoundedProgressBarIos: UIView {
  var circle = UIView()
  var circleShadow = UIView()
  var progressCircle = CAShapeLayer()
  var progressCircleShadow = CAShapeLayer()
  
  @objc(setProps:)
  func setProps(props: NSDictionary) {
    
    let size = props["size"] as! CGFloat;
    
    circle.frame = CGRect(x: 0,y: 0, width: size, height: size);
    circleShadow.frame = CGRect(x: 0,y: 0, width: size, height: size);
    circle.layoutIfNeeded()
    circleShadow.layoutIfNeeded()
    
    let circlePath = UIBezierPath(arcCenter: CGPoint (x: circle.bounds.width / 2, y: circle.bounds.width / 2), radius: size, startAngle: CGFloat(-0.5 * Double.pi), endAngle: CGFloat(1.5 * Double.pi), clockwise: true)
    
    progressCircle.path = circlePath.cgPath
    progressCircleShadow.path = circlePath.cgPath
    
    progressCircle.strokeStart = 0
    progressCircleShadow.strokeStart = 0
    
    progressCircle.lineWidth = props["borderWidth"] as! CGFloat
    progressCircleShadow.lineWidth = props["backgroundWidth"] as! CGFloat

    let customLineColor = UIColor(hexString: props["color"] as! String).cgColor
    progressCircle.strokeColor = customLineColor
    
    let customLineColorShadow = UIColor(hexString: props["shadowColor"] as! String).cgColor
    progressCircleShadow.strokeColor = customLineColorShadow
    
    progressCircle.strokeEnd = props["percent"] as! CGFloat
    progressCircleShadow.strokeEnd = 1
    
    let bgColor = props["bgColor"]
    let customBgColor = UIColor(hexString: bgColor as! String).cgColor
    progressCircle.fillColor = customBgColor
    
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
