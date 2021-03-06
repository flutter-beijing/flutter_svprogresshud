#import <SVProgressHUD/SVProgressHUD.h>
#import "FlutterSvprogresshudPlugin.h"

@implementation FlutterSvprogresshudPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"flutter_svprogresshud"
            binaryMessenger:[registrar messenger]];
  FlutterSvprogresshudPlugin* instance = [[FlutterSvprogresshudPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [SVProgressHUD setDefaultStyle: SVProgressHUDStyleDark];
        [SVProgressHUD setDefaultMaskType: SVProgressHUDMaskTypeClear];
    }
    return self;
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
    float progress = [call.arguments[@"progress"] floatValue];
    NSString *status = call.arguments[@"status"];
    NSInteger delay = [call.arguments[@"delay"] integerValue];

    if ([@"setDefaultStyle" isEqualToString:call.method]) {
        NSString *style = call.arguments[@"style"];
        [self setDefaultStyle:style];
    } else if ([@"setDefaultMaskType" isEqualToString:call.method]) {
        NSString *maskType = call.arguments[@"maskType"];
        [self setDefaultMaskType:maskType];
    } else if ([@"show" isEqualToString:call.method]) {
        [self show:status];
    } else if ([@"showInfo" isEqualToString:call.method]) {
        [self showInfo:status];
    } else if ([@"showSuccess" isEqualToString:call.method]) {
        [self showSuccess:status];
    } else if ([@"showError" isEqualToString:call.method]) {
        [self showError:status];
    } else if ([@"showProgress" isEqualToString:call.method]) {
        [self showProgress:progress status:status];
    } else if ([@"dismiss" isEqualToString:call.method]) {
        [self dismiss:delay];
    } else if ([@"dismissWithDelay" isEqualToString:call.method]) {
        [self dismissWithDelay:delay];
    } else {
        result(FlutterMethodNotImplemented);
        return;
    }

    result([NSNumber numberWithBool:YES]);
}

- (void)setDefaultStyle:(NSString *)style
{
    if ([@"dark" isEqualToString:style]) {
        [SVProgressHUD setDefaultStyle: SVProgressHUDStyleDark];
    } else {
        [SVProgressHUD setDefaultStyle: SVProgressHUDStyleLight];
    }
}

- (void)setDefaultMaskType:(NSString *)maskType
{
    if ([@"none" isEqualToString:maskType]) {
        [SVProgressHUD setDefaultMaskType: SVProgressHUDMaskTypeNone];
    } else if ([@"clear" isEqualToString:maskType]) {
        [SVProgressHUD setDefaultMaskType: SVProgressHUDMaskTypeClear];
    } else if ([@"black" isEqualToString:maskType]) {
        [SVProgressHUD setDefaultMaskType: SVProgressHUDMaskTypeBlack];
    } else if ([@"gradient" isEqualToString:maskType]) {
        [SVProgressHUD setDefaultMaskType: SVProgressHUDMaskTypeGradient];
    }
}

- (void)show:(NSString *)status
{
    if ([status length] == 0) {
        [SVProgressHUD show];
    } else {
        [SVProgressHUD showWithStatus: status];
    }
}

- (void)showInfo:(NSString *)status
{
    [SVProgressHUD showInfoWithStatus: status];
}

- (void)showSuccess:(NSString *) status
{
    [SVProgressHUD showSuccessWithStatus: status];
}

- (void)showError:(NSString *) status
{
    [SVProgressHUD showErrorWithStatus: status];
}

- (void)showProgress:(CGFloat) progress
              status:(NSString*) status
{
    [SVProgressHUD showProgress: progress / 100 status: status];
}

- (void)dismiss:(NSInteger)delay
{
    [SVProgressHUD dismiss];
}

- (void)dismissWithDelay:(NSInteger)delay
{
    NSTimeInterval delaySecond = delay / 1000;
    [SVProgressHUD dismissWithDelay: delaySecond];
}

@end
