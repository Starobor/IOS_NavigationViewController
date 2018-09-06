//
//  SecondViewController.swift
//  NavigationViewController
//
//  Created by Citizen on 06.09.2018.
//  Copyright © 2018 Citizen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "SecondVC"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.perform(#selector(goBack), with: nil, afterDelay: 3.0)
    }
    

    @objc func goBack() {
        navigationController?.popViewController(animated: true)
        var curentControllerArray =  navigationController?.viewControllers
        curentControllerArray?.removeLast()
        if let newController = curentControllerArray {
            navigationController?.viewControllers = newController
        }
    }
    

}
