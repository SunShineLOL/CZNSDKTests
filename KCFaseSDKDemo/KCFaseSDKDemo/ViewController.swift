//
//  ViewController.swift
//  KCFaseSDKDemo
//
//  Created by czn on 2019/5/10.
//  Copyright © 2019 czn. All rights reserved.
//

import UIKit
import KCFace
class ViewController: UIViewController,KCSDKDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let btn = UIButton(type: .custom)
        btn.addTarget(self, action: #selector(btnAction(sender:)), for: .touchUpInside)
        btn.setTitle("启动SDK", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.titleLabel?.font = .boldSystemFont(ofSize: 18)
        self.view.addSubview(btn)
        btn.snp_makeConstraints { (make) in
            make.center.equalTo(self.view)
            make.size.equalTo(CGSize(width: 300, height: 60))
        }
        
        let btn2 = UIButton(type: .custom)
        btn2.addTarget(self, action: #selector(btnAction2(sender:)), for: .touchUpInside)
        btn2.setTitle("获取消费记录", for: .normal)
        btn2.setTitleColor(UIColor.black, for: .normal)
        btn2.titleLabel?.font = .boldSystemFont(ofSize: 18)
        self.view.addSubview(btn2)
        btn2.snp_makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.top.equalTo(btn.snp_bottom).offset(20)
            make.size.equalTo(CGSize(width: 300, height: 60))
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    @objc func btnAction2(sender: UIButton){
        KCSDKManager.sharedInstances.configSDK("kechong", "2d08d3c1b7c14468ab14bf8aca454070", "", "", "kc", "kechong")
        KCSDKManager.sharedInstances.payRecords(0, 0) { (bool, resp) in
            print("返回:\(resp ?? "" as AnyObject)")
        }
    }
    @objc func btnAction(sender: UIButton){
        KCSDKManager.sharedInstances.configSDK("kechong", "2d08d3c1b7c14468ab14bf8aca454070", "", "", "kc", "kechong")
        KCSDKManager.sharedInstances.delegate = self
        KCSDKManager.sharedInstances.showKCFace(self) { (bool, desc) in
            if bool == true {
                print("sdk唤起成功!")
            }else{
                print("SDK唤起失败\(desc)")
            }
        }
    }
    func kcAccreditWXPay()  {
        print("去k开通~~~")
    }
}

