//
//  TabViewController.swift
//  新浪微博
//
//  Created by eskyhero on 15/11/18.
//  Copyright © 2015年 eskyhero. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //创建子视图控制器
        let Home = HomeViewController()
        let Msg = MsgViewController()
        let Search = SearchViewController()
        let My = MyViewController()
        
        self.addChildViewController(addCildVc(Home, title: "首页", image: "tabbar_home", selectedImage: "tabbar_home_highlighted"))
        self.addChildViewController(addCildVc(Msg, title: "消息", image: "tabbar_message_center", selectedImage: "tabbar_message_center_highlighted"))
        self.addChildViewController(addCildVc(Search, title: "搜索", image: "tabbar_discover", selectedImage: "tabbar_discover_highlighted"))
        self.addChildViewController(addCildVc(My, title: "我", image: "tabbar_profile", selectedImage: "tabbar_profile_highlighted"))
        
        // Do any additional setup after loading the view.
    }
    
    func addCildVc(childVc:UIViewController,title:String,image:String,selectedImage:String) -> UINavigationController
    {
        //导航控制器名称
        childVc.title = title
        //导航控制器默认图片
        childVc.tabBarItem.image = UIImage(named: image)
        //导航控制器点击后图片背景渲染
        childVc.tabBarItem.selectedImage = UIImage(named: selectedImage)?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        //可变的字典
        let selectedtext = NSMutableDictionary()
        //控制器字体颜色
        selectedtext[NSForegroundColorAttributeName] = UIColor.orangeColor()
        //tabBar文字字体颜色
        childVc.tabBarItem.setTitleTextAttributes(selectedtext as? [String : AnyObject], forState: .Selected)
        
        let nv = UINavigationController(rootViewController: childVc)
        return nv
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
