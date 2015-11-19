//
//  HomeViewController.swift
//  StateBar
//
//  Created by eskyhero on 15/11/18.
//  Copyright © 2015年 eskyhero. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.orangeColor()
        
        //设置导航栏的按钮（右边：扫一扫）
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.item(self, action: "Flicking", image: "compose_camerabutton_background", HighImage: "compose_camerabutton_background_highlighted")
        //设置导航栏（左边：添加好友）
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.item(self, action: "Addbuddy", image: "compose_keyboardbutton_background", HighImage: "compose_keyboardbutton_background_highlighted")
        // Do any additional setup after loading the view.
    }
    func Flicking()
    {
        print("扫一扫")
    }
    func Addbuddy()
    {
        print("添加好友")
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
