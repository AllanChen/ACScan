//
//  AppDelegate.m
//  WeChatScan
//
//  Created by it on 5/11/16.
//  Copyright © 2016 AllanChan. All rights reserved.
//

#import "AppDelegate.h"
#import "ScanQRCodeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    ScanQRCodeViewController *mainVC = [ScanQRCodeViewController new];
    self.window.rootViewController = mainVC;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
