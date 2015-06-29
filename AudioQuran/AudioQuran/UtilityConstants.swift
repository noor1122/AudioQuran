//
//  UtilityConstants.swift
//  AudioQuran
//
//  Created by Noor on 26/06/2015.
//  Copyright (c) 2015 Noor. All rights reserved.
//

import UIKit

class UtilityConstants: NSObject {
    
    enum UIUserInterfaceIdiom : Int
    {
        case Unspecified
        case Phone
        case Pad
    }
    
    struct ScreenSize
    {
        static let SCREEN_WIDTH = UIScreen.mainScreen().bounds.size.width
        static let SCREEN_HEIGHT = UIScreen.mainScreen().bounds.size.height
        static let SCREEN_MAX_LENGTH = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
        static let SCREEN_MIN_LENGTH = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    }
    
    struct DeviceType
    {
        static let IS_IPHONE_4_OR_LESS =  UIDevice.currentDevice().userInterfaceIdiom == .Phone && ScreenSize.SCREEN_MAX_LENGTH < 568.0
        static let IS_IPHONE_5 = UIDevice.currentDevice().userInterfaceIdiom == .Phone && ScreenSize.SCREEN_MAX_LENGTH == 568.0
        static let IS_IPHONE_6 = UIDevice.currentDevice().userInterfaceIdiom == .Phone && ScreenSize.SCREEN_MAX_LENGTH == 667.0
        static let IS_IPHONE_6P = UIDevice.currentDevice().userInterfaceIdiom == .Phone && ScreenSize.SCREEN_MAX_LENGTH == 736.0
    }
    
    // image constants
   let TAB_BAR_BACKGROUND_IMG = "Mosque"
   let QURAN_IMG = "Quran"
    let MOON_STARS_IMG = "Moon"
    
    // height and width
    let TAB_BAR_HEIGHT = 100
    let TAB_BAR_WIDTH_IPHONE_5 = 320
    let TAB_BAR_WIDTH_IPHONE_6 = 375
    let TAB_BAR_WIDTH_IPHONE_6P = 414
    
}
