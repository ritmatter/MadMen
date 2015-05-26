//
//  AppDelegate.swift
//  Draper
//
//  Created by ritmatter on 5/19/15.
//  Copyright (c) 2015 ritmatter. All rights reserved.
//

import Parse
import Bolts
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func prefersStatusBarHidden() -> Bool {
    return true
  }

  // implemented in your application delegate
  func application(application: UIApplication, didRegisterUserNotificationSettings notificationSettings: UIUserNotificationSettings) {
    let settings = UIApplication.sharedApplication().currentUserNotificationSettings()
    if settings.types != .None {
      let viewController = self.window?.rootViewController as! ViewController
      viewController.setNotifications()
    }
  }

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    // [Optional] Power your app with Local Datastore. For more info, go to
    // https://parse.com/docs/ios_guide#localdatastore/iOS
    Parse.enableLocalDatastore()
    
    // Initialize Parse.
    Parse.setApplicationId("Nglf0a7Mt8OncXu22k8UDEN4JmJryeEeVOA5xS09",
      clientKey: "O57X2l5Qpz6gZMe6bBHccNkqJplUO56Ok9xPbghD")
    
    // [Optional] Track statistics around application opens.
    PFAnalytics.trackAppOpenedWithLaunchOptions(launchOptions)

    // Override point for customization after application launch.
    application.registerUserNotificationSettings(UIUserNotificationSettings(
      forTypes: .Alert | .Badge | .Sound, categories: nil))
    //application.registerForRemoteNotifications()
    return true
  }

  func applicationWillResignActive(application: UIApplication) {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
  }

  func applicationDidEnterBackground(application: UIApplication) {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
  }

  func applicationWillEnterForeground(application: UIApplication) {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
  }

  func applicationDidBecomeActive(application: UIApplication) {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  }

  func applicationWillTerminate(application: UIApplication) {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
  }


}

