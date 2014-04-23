//
//  AppiumiOSSettingsModel.h
//  Appium
//
//  Created by Dan Cuellar on 4/23/14.
//  Copyright (c) 2014 Appium. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppiumiOSSettingsModel : NSObject

@property (readonly) NSArray* allCalendarFormats;
@property NSString *appPath;
@property BOOL authorized;
@property NSNumber *backendRetries;
@property NSString *bundleID;
@property NSString *calendarFormat;
@property NSString *customTraceTemplatePath;
@property NSString *deviceName;
@property BOOL fullReset;
@property BOOL keepArtifacts;
@property BOOL keepKeychains;
@property NSString *language;
@property NSNumber *launchTimeout;
@property NSString *locale;
@property BOOL noReset;
@property BOOL notMerciful;
@property NSString *orientation;
@property NSString *platformVersion;
@property NSString *udid;
@property BOOL useAppPath;
@property BOOL useBundleID;
@property BOOL useCalendar;
@property BOOL useCustomTraceTemplate;
@property BOOL useDefaultDevice;
@property BOOL useLanguage;
@property BOOL useLocale;
@property BOOL useMobileSafari;
@property BOOL useNativeInstrumentsLibrary;
@property BOOL useOrientation;
@property BOOL useUDID;
@property NSString *xcodePath;

-(id) initWithDefaults:(NSUserDefaults*)defaults;

@end

typedef enum iOSAutomationDeviceTypes
{
	iOSAutomationDevice_iPhone,
	iOSAutomationDevice_iPad
} iOSAutomationDevice;

typedef enum iOSOrientationTypes
{
	iOSOrientation_Portrait,
	iOSOrientation_Landscape
} iOSOrientation;
