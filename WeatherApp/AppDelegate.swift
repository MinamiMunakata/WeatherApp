//
//  AppDelegate.swift
//  WeatherApp
//
//  Created by minami on 2018-10-04.
//  Copyright © 2018 宗像三奈美. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let coolTBC = UITabBarController()
        
        window?.rootViewController = coolTBC
        
        // TODO: initialize city objects for Vancouver and 4 other international cities
        let vancouver = City(name: "Vancouver", weather: "Rainy", temp: "12")
        let tokyo = City(name: "Tokyo", weather: "Sunny", temp: "20")
        let london = City(name: "London", weather: "Cloudy", temp: "14")
        let newyork = City(name: "New York", weather: "Sunny", temp: "25")
        
//        // --------------- make a view controller and tab icon ----------------------------------
//        let vc = ViewController()
//        vc.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)  // tag is the order
//        // ---------------------------------------------------------------------------------------
        
        
        //let navc = UINavigationController(rootViewController: vc)
        
        //coolTBC.viewControllers = [navc] // make a tab with ViewController.swift (with Nav)
        
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

