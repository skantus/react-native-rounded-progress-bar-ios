//
//  RNRoundedProgressBarManager.swift
//  RNRoundedProgressBar
//
//  Created by Alejo Castaño on 25/11/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

import Foundation

@objc(RNRoundedProgressBarManager)
class RNRoundedProgressBarManager : RCTViewManager {
  
  override func view() -> UIView! {
    return RoundedProgressBarView();
  }
  
  override static func requiresMainQueueSetup() -> Bool {
     return true
   }
}
