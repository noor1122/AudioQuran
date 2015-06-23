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
        var nav = UINavigationController()
        var homeVC = ViewController(nibName: nil, bundle: nil)
        self.addChildViewController(nav)
        self.view.insertSubview(nav.view, atIndex: 0)
        nav.didMoveToParentViewController(self)
        
        //ViewController = Name of your controller
//        nav.viewControllers = [homeVC]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
