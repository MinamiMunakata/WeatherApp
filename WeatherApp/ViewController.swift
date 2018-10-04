//
//  ViewController.swift
//  WeatherApp
//
//  Created by minami on 2018-10-04.
//  Copyright © 2018 宗像三奈美. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let butt = UIButton(frame: CGRect(
            x: view.bounds.width / 2 - 50, y: view.bounds.height / 2 - 25, width: 100, height: 50))
        butt.backgroundColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        view.addSubview(butt)
    }


}

