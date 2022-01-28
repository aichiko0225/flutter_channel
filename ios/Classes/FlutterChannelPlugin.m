#import "FlutterChannelPlugin.h"
#import "FlutterBridge.h"

@implementation FlutterChannelPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"flutter_channel"
            binaryMessenger:[registrar messenger]];
    [FlutterBridge setupFlutterBinaryMessenger:registrar.messenger];
    
    FlutterChannelPlugin* instance = [[FlutterChannelPlugin alloc] init];
    [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
    if ([@"getPlatformVersion" isEqualToString:call.method]) {
        result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
    } else {
        // 其他方法
        
        result(FlutterMethodNotImplemented);
    }
}

@end
