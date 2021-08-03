//
//  ViewController.swift
//  NoticeBoard
//
//  Created by shiva ram on 03/08/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NetworkManager.instance.parseJson()
        
        
    }


}

