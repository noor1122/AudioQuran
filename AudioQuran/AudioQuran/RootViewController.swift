//
//  RootViewController.swift
//  AudioQuran
//
//  Created by Noor on 24/06/2015.
//  Copyright (c) 2015 Noor. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        var initialViewController = storyboard.instantiateViewControllerWithIdentifier("VC") as UIViewController
//        var homeVC = ViewController(nibName: "VC", bundle: nil)
        var nav = UINavigationController(rootViewController: initialViewController)
        self.addChildViewController(nav)
        self.view.insertSubview(nav.view, atIndex: 0)
        nav.didMoveToParentViewController(self)
        
        
        let utility = UtilityConstants()
        var imageView : UIImageView
        var width = CGFloat(utility.TAB_BAR_WIDTH_IPHONE_5)
        if(UtilityConstants.DeviceType.IS_IPHONE_6)
        {
            width = CGFloat(utility.TAB_BAR_WIDTH_IPHONE_6)
        }
        else if (UtilityConstants.DeviceType.IS_IPHONE_6P)
        {
            width = CGFloat(utility.TAB_BAR_WIDTH_IPHONE_6P)
        }
        imageView  = UIImageView(frame:CGRectMake(0, self.view.frame.size.height-120, width, 120));
        imageView.image = UIImage(named:utility.TAB_BAR_BACKGROUND_IMG)
        self.view.addSubview(imageView)
        
        
        // programatically making tab bar
//        let lblAudio = UILabel()
//        let btnQuran = UIButton()
//        lblAudio.text = "Listen Quran"
//        //lblAudio.font = UIFont(name: "MarkerFelt-Thin", size: 22)
//        lblAudio.textColor = UIColor.whiteColor()
//        lblAudio.textAlignment = .Center
//        lblAudio.frame = CGRectMake(0, self.view.frame.size.height-25, width, 20)
//        //btnQuran.setTitle("✸", forState: .Normal)
//        btnQuran.setTitleColor(UIColor.greenColor(), forState: .Normal)
//        btnQuran.frame = CGRectMake(0, self.view.frame.size.height-120, 20, 20)
//        btnQuran.addTarget(self, action: "pressed:", forControlEvents: .TouchUpInside)
//        self.view.addSubview(lblAudio)
//        self.view.addSubview(btnQuran)
        //self .addButtonForQuran()
        self .tabBarMoonAndStars()
        self .addButtonForQuranSample()
        self .tabButtons()
    }
    
    func pressed(sender: UIButton!) {
        var alertView = UIAlertView();
        alertView.addButtonWithTitle("Ok");
        alertView.title = "title";
        alertView.message = "message";
        alertView.show();
    }
    
    func addButtonForQuran()
    {
        let utility = UtilityConstants()
        
        let btnQuran = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        btnQuran.frame =  CGRectMake(self.view.bounds.origin.x + (self.view.bounds.width * 0.422), self.view.bounds.origin.y + (self.view.bounds.height * 0.8), 55, 40)
        btnQuran.layer.cornerRadius = 10.0
        btnQuran.layer.borderWidth = 1.0
        //btnQuran.backgroundColor = UIColor.whiteColor()
        btnQuran.layer.borderColor = UIColor.blackColor().CGColor
        btnQuran.setImage(UIImage(named: utility.QURAN_IMG), forState: .Normal)
        self.view.addSubview(btnQuran)

    }

    func tabBarMoonAndStars()
    {
        let utility = UtilityConstants()
        var imageView : UIImageView
        imageView  = UIImageView(frame:CGRectMake(50, self.view.frame.size.height-120, 50, 50));
        imageView.image = UIImage(named:utility.MOON_STARS_IMG)
        self.view.addSubview(imageView)
        
        // adding stars at random postions
        //  ------STAR 1--------
        let lblstar = UILabel()
        lblstar.text = "✸"
        lblstar.frame = CGRectMake(100, self.view.frame.size.height-90, 50, 50)
        self.view.addSubview(lblstar)
        //  ------STAR 2--------
        let lblLeftStar = UILabel()
        lblLeftStar.text = "✸"
        lblLeftStar.frame = CGRectMake(self.view.frame.size.width-60, self.view.frame.size.height-120, 50, 50)
        self.view.addSubview(lblLeftStar)
        //  ------STAR 3--------
        let lblLeftStarTop = UILabel()
        lblLeftStarTop.text = "✸"
        lblLeftStarTop.frame = CGRectMake(self.view.frame.size.width-90, self.view.frame.size.height-129, 50, 50)
        self.view.addSubview(lblLeftStarTop)
        //  ------STAR 4--------
        let lblLeftStarBelow = UILabel()
        lblLeftStarBelow.text = "✸"
        lblLeftStarBelow.frame = CGRectMake(self.view.frame.size.width-100, self.view.frame.size.height-100, 50, 50)
        self.view.addSubview(lblLeftStarBelow)
        
        
        
    }
    
    
    func addButtonForQuranSample()
    {
        var btnQuran = UIButton()
        btnQuran = UIButton(frame: CGRectMake(self.view.bounds.origin.x + (self.view.bounds.width * 0.325), self.view.bounds.origin.y + (self.view.bounds.height * 0.8), self.view.bounds.origin.x + (self.view.bounds.width * 0.35), self.view.bounds.origin.y + (self.view.bounds.height * 0.05)))
        btnQuran.layer.cornerRadius = 12.0
        btnQuran.layer.borderWidth = 1.0
        //btnQuran.backgroundColor = UIColor.whiteColor()
        btnQuran.layer.borderColor = UIColor.blackColor().CGColor
        btnQuran.setTitle("القرآن الكريم", forState: UIControlState.Normal)
//        btnQuran.setTitleColor(UIColor .greenColor(), forState: UIControlState.Normal)
        btnQuran.setTitleColor(UIColor(red: 0.0/100, green: 153.0/255, blue: 0.0/205, alpha: 1.0), forState: UIControlState.Normal)
        self.view.addSubview(btnQuran)
    }
       
    func tabButtons()
    {
        //left button
        let btnDua = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        btnDua.setTitle("Dua", forState: .Normal)
        btnDua.setTitleColor(UIColor(red: 0.0/100, green: 153.0/255, blue: 0.0/205, alpha: 1.0), forState: UIControlState.Normal)
        let utility = UtilityConstants()
        var x = CGFloat(35)
        if(UtilityConstants.DeviceType.IS_IPHONE_6)
        {
            x = CGFloat(43)
        }
        else if (UtilityConstants.DeviceType.IS_IPHONE_6P)
        {
            x = CGFloat(43)
        }
        btnDua.titleLabel!.font =  UIFont(name: "HelveticaNeue", size: 15)
        btnDua.frame = CGRectMake(x, self.view.frame.size.height-50, 60, 50)
        btnDua.addTarget(self, action: "pressed:", forControlEvents: .TouchUpInside)
        btnDua.backgroundColor = UIColor.clearColor()
        self.view.addSubview(btnDua)
        
        // center button
        let btnListenQuran = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        btnListenQuran.setTitle("|Listen Quran|", forState: .Normal)
        btnListenQuran.setTitleColor(UIColor(red: 0.0/100, green: 153.0/255, blue: 0.0/205, alpha: 1.0), forState: UIControlState.Normal)
        var xHorizontal = CGFloat(100)
        if(UtilityConstants.DeviceType.IS_IPHONE_6)
        {
            xHorizontal = CGFloat(128)
        }
        else if (UtilityConstants.DeviceType.IS_IPHONE_6P)
        {
            xHorizontal = CGFloat(128)
        }
        btnListenQuran.titleLabel!.font =  UIFont(name: "HelveticaNeue", size: 15)
        btnListenQuran.frame = CGRectMake(xHorizontal, self.view.frame.size.height-50, 120, 50)
        btnListenQuran.addTarget(self, action: "pressed:", forControlEvents: .TouchUpInside)
        btnListenQuran.backgroundColor = UIColor.clearColor()
        self.view.addSubview(btnListenQuran)
        
        // right button
        let btnAdhan = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        btnAdhan.setTitle("Adhan", forState: .Normal)
        btnAdhan.setTitleColor(UIColor(red: 0.0/100, green: 153.0/255, blue: 0.0/205, alpha: 1.0), forState: UIControlState.Normal)
        var xAxis = CGFloat(195)
        if(UtilityConstants.DeviceType.IS_IPHONE_6)
        {
            xAxis = CGFloat(240)
        }
        else if (UtilityConstants.DeviceType.IS_IPHONE_6P)
        {
            xAxis = CGFloat(240)
        }
        btnAdhan.titleLabel!.font =  UIFont(name: "HelveticaNeue", size: 15)
        btnAdhan.frame = CGRectMake(xAxis, self.view.frame.size.height-50, 120, 50)
        btnAdhan.addTarget(self, action: "pressed:", forControlEvents: .TouchUpInside)
        btnAdhan.backgroundColor = UIColor.clearColor()
        self.view.addSubview(btnAdhan)
        
    }
        
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}
