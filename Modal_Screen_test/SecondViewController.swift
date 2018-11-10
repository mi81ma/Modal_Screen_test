//
//  SecondViewController.swift
//  Modal_Screen_test
//
//  Created by masato on 10/11/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit

class SecondViewController : UIViewController{

    override func viewDidLoad() {

        self.view.backgroundColor = UIColor.black

        // もどるButtonを生成.
        let myButton = UIButton()
        myButton.frame = CGRect(x: 0, y: 0, width: 200, height: 40)
        myButton.backgroundColor = UIColor.red
        myButton.layer.masksToBounds = true
        myButton.setTitle("もどる", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.black, for: UIControl.State.highlighted)
        myButton.layer.cornerRadius = 20.0
        myButton.layer.position = CGPoint(x: self.view.frame.width/2, y:200)
        myButton.tag = 1
        myButton.addTarget(self, action: #selector(SecondViewController.onClickMyButton(sender:)), for: .touchUpInside)

        // viewにButtonを追加.
        self.view.addSubview(myButton)
    }

    /*
     Buttonを押した時に呼ばれるメソッド.
     */
    @objc func onClickMyButton(sender : UIButton){

        // viewを閉じる.
        self.navigationController?.dismiss(animated: true, completion: nil)
    }
}
