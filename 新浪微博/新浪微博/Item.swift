//
//  Item.swift
//  新浪微博
//
//  Created by eskyhero on 15/11/18.
//  Copyright © 2015年 eskyhero. All rights reserved.
//

import UIKit

//为UIBarButtonItem扩展一个方法
extension UIBarButtonItem
{
    //SEL static只实例化一次 AnyObject对应OC的SEL
    static func item(target:AnyObject,action:Selector,image:String,HighImage:String) -> UIBarButtonItem
    {
        let item:UIButton = UIButton()
        item.setBackgroundImage(UIImage(named: image), forState: .Normal)
        item.setBackgroundImage(UIImage(named: HighImage), forState: .Highlighted)
        //currentBackgroundImage图片大小
        item.frame.size = (item.currentBackgroundImage?.size)!
        //触摸按钮执行
        item.addTarget(target, action: action, forControlEvents: .TouchUpInside)
        
        return UIBarButtonItem(customView: item)
    }
}
