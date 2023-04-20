//
//  AppDelegate.m
//  UnlockApp
//
//  Created by yangtao on 2023/4/20.
//

#import "AppDelegate.h"
#import "UnlockViewController.h"
#import "ViewController.h"


@interface AppDelegate ()

@property (nonatomic, strong) UIWindow *unlockWindow;

@end


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.unlockWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.unlockWindow makeKeyAndVisible];
    
    WEAKSELF
    UnlockViewController *unlockVC = [[UnlockViewController alloc] init];
    unlockVC.unlockCompleteBlock = ^{
        [weakSelf unlockApp];
    };
    self.unlockWindow.rootViewController = unlockVC;
    
    return YES;
}

- (void)unlockApp {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.unlockWindow = nil;
    [self.window makeKeyAndVisible];
    
    self.window.rootViewController = [[ViewController alloc] init];
}

@end
