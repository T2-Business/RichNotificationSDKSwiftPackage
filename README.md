# RichNotificationSDKSwiftPackage
# Introduction 
This package provides a collection of rich notification components for iOS apps developed in Swift. It allows you to enhance your app's notifications with custom designs and interactive elements. 

# Getting Started
Before you start integrating RiCH notification framework with your iOS application you need to make sure you have the following:
1.  Rich Notifications Swift Package
2.    RiCHService-Info.plist file.

# Installation Rich Notifications Swift Package
1. To add the Rich Notifications Swift Package to your Xcode project, follow these steps:

2. Xcode and navigate to your project.
3. Select your project in the Project Navigator.
4. Choose your app's target under the "Targets" section.
5. Go to the "Swift Packages" tab.
6. Click on the "+" button to add a new package.
In the "Choose Package Repository" dialog, enter the package repository URL: https://github.com/T2-Business/RichNotificationSDKSwiftPackage
7. Click "Next" to proceed.
8. Choose the version rule you prefer (e.g., "Up to Next Major") and click "Next".
9. Xcode will fetch the package and present you with a confirmation dialog.
10. Click "Finish" to add the package to your project.

# Implement RiCHService-Info.plist
1. Add RiCHService-Info.plist to your project.
2. Open RiCHService-Info.plist file and you should find the following:
BUNDLE_ID           Fill your app bundle id
APP_GROUP           Fill your app group*
RICH_BASE_URL       Prefiled by T2 team
CLIENT_SECRET       Prefiled by T2 team
CLIENT_ID           Prefiled by T2 team
3. Add pod file with the following dependencies and its versions:
  pod 'Realm' , '10.28.5'
  pod 'RealmSwift' , '10.28.5'
  pod 'RuntimeNew' , '2.1.5'
  pod 'Unrealm' , '1.9.4'
  pod 'FirebaseAnalytics'
  pod 'FirebaseMessaging'
  
4. Creating app group
Setup: 
    •    Open xcode project.
    •    Go to Signing and Capabilities.
    •    Click the + icon at the top left corner.
    •    Search for “App groups”
    •    Add it to your project.
    •    Click on the + to add group name 
    •    Your app group should follow the format group.<group name>.
    
# Add RiCHNotificationService to the notification service extension
1.  Creating Notification Service Extension 
    According to apple, A Notification Service app extension lets you customize the content of a remote notification before it is delivered to the user.

Step to create notification service extension:
    1.  Open your xcode project.
    2.    Click on file -> new target -> search for “Notification service extension”. 
    3.    Create your extension.
    4.  Add your extension to the same app group you added your main app.

    5.  Add RiCHNotificationService.framwork to Notification Service Extension 
    6.  Add in the pod file with the following dependencies and its versions in Notification Service Extension target :
            pod 'Realm' , '10.28.5'
            pod 'RealmSwift' , '10.28.5'
            pod 'RuntimeNew' , '2.1.5'
            pod 'Unrealm' , '1.9.4' 
    7.  Add RiCHService-Info.plist to your extension as well.
    8.  Now open your UNNotificationServiceExtension extended class in your notification service extension.
    9.  Import RiCHNotificationService.
    10. In your didReceive(_ request: UNNotificationRequest call RiCHNotificationExtensionHandler().handleNotification method.


# Build and Test
In order for the framework to work you need to register the user device with RiCH service, you can do that by calling RiCHService().registerDevice method.
Open AppDelegate and import RiCHNotificationService

 
