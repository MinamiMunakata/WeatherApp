//
//  DetailedViewController.swift
//  WeatherApp
//
//  Created by minami on 2018-10-04.
//  Copyright © 2018 宗像三奈美. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {
    var city: City!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        navigationController?.navigationBar.topItem?.title = city.name
        
        let cityLabel = UILabel(frame: CGRect(
            x: view.bounds.width / 2 - 150, y: view.bounds.height / 2 - 250, width: 300, height: 70))
        cityLabel.text = city.name
        cityLabel.textAlignment = .center
        cityLabel.font = UIFont(name: "Helvetica Neue", size: 40)
        
        let imageName = city.summary.lowercased()
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        imageView.frame = CGRect(x: view.bounds.width / 2 - 50, y: view.bounds.height / 2 - 150, width: 100, height: 100)
        let summaryLabel = UILabel(frame: CGRect(
            x: view.bounds.width / 2 - 150, y: view.bounds.height / 2 - 50, width: 300, height: 70))
        summaryLabel.text = "Weather: \(city.summary)"
        summaryLabel.textAlignment = .center
        summaryLabel.font = UIFont(name: "Helvetica Neue", size: 20)
        let tempLabel = UILabel(frame: CGRect(
            x: view.bounds.width / 2 - 150, y: view.bounds.height / 2 , width: 300, height: 70))
        tempLabel.text = "Temperature: \(city.temp) C"
        tempLabel.textAlignment = .center
        tempLabel.font = UIFont(name: "Helvetica Neue", size: 20)
        let precipitationLabel = UILabel(frame: CGRect(
            x: view.bounds.width / 2 - 150, y: view.bounds.height / 2 + 50, width: 300, height: 70))
        precipitationLabel.text = "Precipitation: \(city.precipitation) %"
        precipitationLabel.textAlignment = .center
        precipitationLabel.font = UIFont(name: "Helvetica Neue", size: 20)
        view.addSubview(cityLabel)
        view.addSubview(summaryLabel)
        view.addSubview(tempLabel)
        view.addSubview(precipitationLabel)
        view.addSubview(imageView)
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
