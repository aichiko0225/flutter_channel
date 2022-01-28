#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import <flutter_channel/FlutterBridge.h>
#import <MBProgressHUD/MBProgressHUD.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [GeneratedPluginRegistrant registerWithRegistry:self];
    // Override point for customization after application launch.

//    [NSTimer scheduledTimerWithTimeInterval:3.0f target:self selector:@selector(delayMethod) userInfo:nil repeats:YES];

    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (void)delayMethod {
    [[FlutterBridge instance] sendEventToFlutterWith:@"key" arguments:@{@"key": @"123"}];
    UIView *view = self.window.rootViewController.view;
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.label.text = @"SendEventToFlutter";
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [hud hideAnimated:YES];
    });
}

@end
