//
//  FlutterBridge.h
//  flutter_channel
//
//  Created by 赵光飞 on 2022/1/27.
//

#import <Foundation/Foundation.h>
@protocol FlutterBinaryMessenger;
@protocol FlutterBridgeDelegate;

NS_ASSUME_NONNULL_BEGIN

@interface FlutterBridge : NSObject

#pragma mark

/// Bridge全局单例
+ (instancetype)instance;

/// 利用自定义配置进行初始化
/// @param delegate FlutterBrigdeDelegate的实例，用于实现methodName 的处理方法
- (void)setupDelegate:(id<FlutterBridgeDelegate>)delegate;

+ (void)setupFlutterBinaryMessenger:(NSObject<FlutterBinaryMessenger> *)messenager;

/// 将自定义事件传递给flutter侧
/// @param key 事件的标识符
/// @param arguments 事件的参数
- (void)sendEventToFlutterWith:(NSString *)key arguments:(NSDictionary *)arguments;


/// 将自定义事件传递给flutter侧
/// @param methodName 调用原生端的方法名称
/// @param arguments 事件的参数
- (void)sendCallbackToFlutter:(NSString *)methodName arguments:(NSDictionary*)arguments;

@end

NS_ASSUME_NONNULL_END
