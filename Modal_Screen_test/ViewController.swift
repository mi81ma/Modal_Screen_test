//
//  ViewController.swift
//  Modal_Screen_test
//
//  Created by masato on 10/11/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    override func viewDidLoad() {

        // PopButtonを生成.
        let myButton = UIButton()
        myButton.frame = CGRect(x: 0, y: 0, width: 200, height: 40)
        myButton.backgroundColor = .red
        myButton.layer.masksToBounds = true
        myButton.setTitle("PopOver", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.black, for: UIControl.State.highlighted)
        myButton.layer.cornerRadius = 20.0
        myButton.layer.position = CGPoint(x: self.view.frame.width/2, y:200)
        myButton.tag = 0
        myButton.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)

        // viewにButtonを追加.
        self.view.addSubview(myButton)
    }

    /*
     Buttonが押された時に呼ばれるメソッド.
     */
    @objc func onClickMyButton(sender : UIButton){

        // secondViewControllerのインスタンス生成.
        let second = SecondViewController()

        // navigationControllerのrootViewControllerにsecondViewControllerをセット.
        let nav = UINavigationController(rootViewController: second)

        // 画面遷移.
        self.present(nav, animated: true, completion: nil)
    }
}

