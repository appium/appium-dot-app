//
//  AppiumAndroidSettingsModel.h
//  Appium
//
//  Created by Dan Cuellar on 4/23/14.
//  Copyright (c) 2014 Appium. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppiumAndroidSettingsModel : NSObject

@property NSString *activity;
@property NSString *appPath;
@property NSArray *availableActivities;
@property NSArray *availableAVDs;
@property NSString *avd;
@property NSString *avdArguments;
@property NSNumber *chromedriverPort;
@property NSString *coverageClass;
@property NSString *customSDKPath;
@property NSString *deviceName;
@property NSNumber *deviceReadyTimeout;
@property BOOL fullReset;
@property NSString *keyAlias;
@property NSString *keyPassword;
@property NSString *keystorePassword;
@property NSString *keystorePath;
@property BOOL noReset;
@property NSString *package;
@property NSString *platformName;
@property NSString *platformVersion;
@property NSNumber *selendroidPort;
@property BOOL useActivity;
@property BOOL useAppPath;
@property BOOL useAVD;
@property BOOL useAVDArguments;
@property BOOL useBrowser;
@property BOOL useChromedriverPort;
@property BOOL useCoverageClass;
@property BOOL useCustomSDKPath;
@property BOOL useDeviceReadyTimeout;
@property BOOL useKeystore;
@property BOOL usePackage;
@property BOOL useSelendroidPort;
@property BOOL useWaitActivity;
@property BOOL useWaitPackage;
@property NSString *waitActivity;
@property NSString *waitPackage;

-(id) initWithDefaults:(NSUserDefaults*)defaults;
-(void) refreshAvailableActivities;
-(void) refreshAVDs;

@end
