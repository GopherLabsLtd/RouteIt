//
//  ViewController.swift
//  RouteItExample
//
//  Created by Alex Nguyen on 2018-05-10.
//  Copyright © 2018 Gohper Labs LTD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func page1ButtonPressed(_ sender: Any) {
        mainRouter.dispatch(.page1)
    }
    @IBAction func page2ButtonPressed(_ sender: Any) {
        mainRouter.dispatch(.page2(name: "test", title: "test"))
    }
}

