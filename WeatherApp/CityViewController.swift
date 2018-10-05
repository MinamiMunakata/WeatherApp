//
//  CityViewController.swift
//  WeatherApp
//
//  Created by minami on 2018-10-04.
//  Copyright © 2018 宗像三奈美. All rights reserved.
//

import UIKit

class CityViewController: UIViewController {
    var city: City! // City? -> you have to unwrap everytime when you want to use it later
    var detailVC: DetailedViewController?
    
    @objc func showWeatherDetails() {
        detailVC = DetailedViewController()
        detailVC?.city = city
        navigationController?.pushViewController(detailVC!, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        navigationController?.navigationBar.topItem?.title = city.name
        
        let cityLabel = UILabel(frame: CGRect(
            x: view.bounds.width / 2 - 150, y: view.bounds.height / 2 - 200, width: 300, height: 70))
        cityLabel.text = city.name
        cityLabel.textAlignment = .center
        cityLabel.font = UIFont(name: "Helvetica Neue", size: 50)
        
        
        let btn = UIButton(frame: CGRect(x: view.bounds.width / 2 - 100, y: view.bounds.height / 2 - 25, width: 200, height: 50))
        btn.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        btn.setTitle("See Details...", for: .normal)
        btn.layer.cornerRadius = 10.0
        
        btn.addTarget(self, action: #selector(showWeatherDetails), for: .touchUpInside)
        
        view.addSubview(btn)
        view.addSubview(cityLabel)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
