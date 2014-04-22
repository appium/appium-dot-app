//
//  AppiumiOSSettingsModel.m
//  Appium
//
//  Created by Dan Cuellar on 4/23/14.
//  Copyright (c) 2014 Appium. All rights reserved.
//

#import "AppiumiOSSettingsModel.h"
#import "AppiumPreferencesFile.h"
#import "Utility.h"

NSUserDefaults* _defaults;

@implementation AppiumiOSSettingsModel

-(id) initWithDefaults:(NSUserDefaults*)defaults {
	self = [super init];
    if (self) {
		// initialize
		_defaults = defaults;
	}
	return self;
}

#pragma mark - Properties

-(NSArray*) allCalendarFormats {
	return [NSArray arrayWithObjects:@"gregorian", @"japanese", @"buddhist", nil];
}

-(NSString*) appPath { return [_defaults stringForKey:APPIUM_PLIST_IOS_APP_PATH]; }
-(void) setAppPath:(NSString *)appPath { [_defaults setValue:appPath forKey:APPIUM_PLIST_IOS_APP_PATH]; }

-(BOOL) authorized { return [_defaults boolForKey:APPIUM_PLIST_IOS_AUTHORIZED]; }
-(void) setAuthorized:(BOOL)authorized { [_defaults setBool:authorized forKey:APPIUM_PLIST_IOS_AUTHORIZED]; }

-(NSNumber*) backendRetries { return [NSNumber numberWithInt:[[_defaults stringForKey:APPIUM_PLIST_IOS_BACKEND_RETRIES] intValue]]; }
-(void) setBackendRetries:(NSNumber *)backendRetries { [_defaults setValue:backendRetries forKey:APPIUM_PLIST_IOS_BACKEND_RETRIES]; }

-(NSString*) bundleID { return [_defaults stringForKey:APPIUM_PLIST_IOS_BUNDLEID]; }
-(void) setBundleID:(NSString *)bundleID { [_defaults setValue:bundleID forKey:APPIUM_PLIST_IOS_BUNDLEID]; }

-(NSString*) calendarFormat { return [_defaults stringForKey:APPIUM_PLIST_IOS_CALENDAR_FORMAT]; }
-(void) setCalendarFormat:(NSString *)calendarFormat { [_defaults setValue:calendarFormat forKey:APPIUM_PLIST_IOS_CALENDAR_FORMAT]; }

-(NSString*) customTraceTemplatePath { return [_defaults stringForKey:APPIUM_PLIST_IOS_CUSTOM_TRACE_TEMPLATE_PATH]; }
-(void) setCustomTraceTemplatePath:(NSString *)customTraceTemplatePath { [_defaults setValue:customTraceTemplatePath forKey:APPIUM_PLIST_IOS_CUSTOM_TRACE_TEMPLATE_PATH]; }

-(NSString*) deviceName { return [_defaults stringForKey:APPIUM_PLIST_IOS_DEVICE_NAME]; }
-(void) setDeviceName:(NSString *)deviceName { [_defaults setValue:deviceName forKey:APPIUM_PLIST_IOS_DEVICE_NAME]; }

/*
 -(iOSAutomationDevice) deviceToForce { return [[_defaults stringForKey:APPIUM_PLIST_DEVICE] hasPrefix:@"iPad"] ? iOSAutomationDevice_iPad : iOSAutomationDevice_iPhone; }
 -(void) setDeviceToForce:(iOSAutomationDevice)deviceToForce { [self setDeviceToForceString:(deviceToForce == iOSAutomationDevice_iPad ? @"iPad Retina" : @"iPhone Retina (4-inch)")];}
 
 -(NSString*) deviceToForceString { return [_defaults valueForKey:APPIUM_PLIST_DEVICE]; }
 -(void) setDeviceToForceString:(NSString *)deviceToForceString { [_defaults setValue:deviceToForceString forKey:APPIUM_PLIST_DEVICE]; }
 */

-(BOOL) fullReset { return [_defaults boolForKey:APPIUM_PLIST_IOS_FULL_RESET]; }
-(void) setFullReset:(BOOL)fullReset { [_defaults setBool:fullReset forKey:APPIUM_PLIST_IOS_FULL_RESET]; }

-(BOOL) keepArtifacts { return [_defaults boolForKey:APPIUM_PLIST_IOS_KEEP_ARTIFACTS]; }
-(void) setKeepArtifacts:(BOOL)keepArtifacts { [_defaults setBool:keepArtifacts forKey:APPIUM_PLIST_IOS_KEEP_ARTIFACTS]; }

-(BOOL) keepKeychains { return [_defaults boolForKey:APPIUM_PLIST_IOS_KEEP_KEYCHAINS]; }
-(void) setKeepKeychains:(BOOL)keepKeychains { [_defaults setBool:keepKeychains forKey:APPIUM_PLIST_IOS_KEEP_KEYCHAINS]; }

-(NSString*) language { return [_defaults stringForKey:APPIUM_PLIST_IOS_LANGUAGE]; }
-(void) setLanguage:(NSString *)language { [_defaults setValue:language forKey:APPIUM_PLIST_IOS_LANGUAGE]; }

-(NSNumber*) launchTimeout { return [NSNumber numberWithInt:[[_defaults stringForKey:APPIUM_PLIST_IOS_LAUNCH_TIMEOUT] intValue]]; }
-(void) setLaunchTimeout:(NSNumber *)launchTimeout { [_defaults setValue:launchTimeout forKey:APPIUM_PLIST_IOS_LAUNCH_TIMEOUT]; }

-(NSString*) locale { return [_defaults stringForKey:APPIUM_PLIST_IOS_LOCALE]; }
-(void) setLocale:(NSString *)locale { [_defaults setValue:locale forKey:APPIUM_PLIST_IOS_LOCALE]; }

-(BOOL) noReset { return [_defaults boolForKey:APPIUM_PLIST_IOS_NO_RESET]; }
-(void) setNoReset:(BOOL)noReset { [_defaults setBool:noReset forKey:APPIUM_PLIST_IOS_NO_RESET]; }

-(BOOL) notMerciful { return [_defaults boolForKey:APPIUM_PLIST_IOS_NOT_MERICIFUL]; }
-(void) setNotMerciful:(BOOL)notMerciful { [_defaults setBool:notMerciful forKey:APPIUM_PLIST_IOS_NOT_MERICIFUL]; }

-(NSString*) orientation { return [_defaults stringForKey:APPIUM_PLIST_IOS_ORIENTATION]; }
-(void) setOrientation:(NSString *)orientation { [_defaults setValue:orientation forKey:APPIUM_PLIST_IOS_ORIENTATION]; }

/*
 -(iOSOrientation) orientationToForce { return [[_defaults stringForKey:APPIUM_PLIST_ORIENTATION] isEqualToString:APPIUM_PLIST_FORCE_ORIENTATION_LANDSCAPE] ? iOSOrientation_Landscape : iOSOrientation_Portrait; }
 -(void) setOrientationToForce:(iOSOrientation)orientationToForce {[self setOrientationToForceString:(orientationToForce == iOSOrientation_Landscape ? APPIUM_PLIST_FORCE_ORIENTATION_LANDSCAPE : APPIUM_PLIST_FORCE_ORIENTATION_PORTRAIT)]; }
 -(NSString*) orientationToForceString { return [[_defaults valueForKey:APPIUM_PLIST_ORIENTATION] isEqualToString:APPIUM_PLIST_FORCE_ORIENTATION_LANDSCAPE] ? APPIUM_PLIST_FORCE_ORIENTATION_LANDSCAPE : APPIUM_PLIST_FORCE_ORIENTATION_PORTRAIT ; }
 -(void) setOrientationToForceString:(NSString *)orientationToForceString { [_defaults setValue:orientationToForceString forKey:APPIUM_PLIST_ORIENTATION]; }
 */

-(NSString*) platformVersion { return [_defaults stringForKey:APPIUM_PLIST_IOS_PLATFORM_VERSION]; }
-(void) setPlatformVersion:(NSString *)platformVersion { [_defaults setValue:platformVersion forKey:APPIUM_PLIST_IOS_PLATFORM_VERSION]; }

-(NSString*) udid { return [_defaults stringForKey:APPIUM_PLIST_IOS_UDID]; }
-(void) setUdid:(NSString *)udid { [_defaults setValue:udid forKey:APPIUM_PLIST_IOS_UDID]; }

-(BOOL) useAppPath { return [_defaults boolForKey:APPIUM_PLIST_IOS_USE_APP_PATH]; }
-(void) setUseAppPath:(BOOL)useAppPath { [_defaults setBool:useAppPath forKey:APPIUM_PLIST_IOS_USE_APP_PATH]; }

-(BOOL) useBundleID { return [_defaults boolForKey:APPIUM_PLIST_IOS_USE_BUNDLEID]; }
-(void) setUseBundleID:(BOOL)useBundleID { [_defaults setBool:useBundleID forKey:APPIUM_PLIST_IOS_USE_BUNDLEID]; }

-(BOOL) useCalendar { return [_defaults boolForKey:APPIUM_PLIST_IOS_USE_CALENDAR]; }
-(void) setUseCalendar:(BOOL)useCalendar { [_defaults setBool:useCalendar forKey:APPIUM_PLIST_IOS_USE_CALENDAR]; }

-(BOOL) useCustomTraceTemplate { return [_defaults boolForKey:APPIUM_PLIST_IOS_USE_CUSTOM_TRACE_TEMPLATE]; }
-(void) setUseCustomTraceTemplate:(BOOL)useCustomTraceTemplate { [_defaults setBool:useCustomTraceTemplate forKey:APPIUM_PLIST_IOS_USE_CUSTOM_TRACE_TEMPLATE]; }

-(BOOL) useDefaultDevice { return [_defaults boolForKey:APPIUM_PLIST_IOS_USE_DEFAULT_DEVICE]; }
-(void) setUseDefaultDevice:(BOOL)useDefaultDevice { [_defaults setBool:useDefaultDevice forKey:APPIUM_PLIST_IOS_USE_DEFAULT_DEVICE]; }

-(BOOL) useLanguage { return [_defaults boolForKey:APPIUM_PLIST_IOS_USE_LANGUAGE]; }
-(void) setUseLanguage:(BOOL)useLanguage { [_defaults setBool:useLanguage forKey:APPIUM_PLIST_IOS_USE_LANGUAGE]; }

-(BOOL) useLocale { return [_defaults boolForKey:APPIUM_PLIST_IOS_USE_LOCALE]; }
-(void) setUseLocale:(BOOL)useLocale { [_defaults setBool:useLocale forKey:APPIUM_PLIST_IOS_USE_LOCALE]; }

-(BOOL) useMobileSafari { return [_defaults boolForKey:APPIUM_PLIST_IOS_USE_MOBILE_SAFARI]; }
-(void) setUseMobileSafari:(BOOL)useMobileSafari { [_defaults setBool:useMobileSafari forKey:APPIUM_PLIST_IOS_USE_MOBILE_SAFARI]; }

-(BOOL) useNativeInstrumentsLibrary { return [_defaults boolForKey:APPIUM_PLIST_IOS_USE_NATIVE_INSTRUMENTS_LIBRARY]; }
-(void) setUseNativeInstrumentsLibrary:(BOOL)useNativeInstrumentsLibrary { [_defaults setBool:useNativeInstrumentsLibrary forKey:APPIUM_PLIST_IOS_USE_NATIVE_INSTRUMENTS_LIBRARY]; }

-(BOOL) useOrientation { return [_defaults boolForKey:APPIUM_PLIST_IOS_USE_ORIENTATION]; }
-(void) setUseOrientation:(BOOL)useOrientation { [_defaults setBool:useOrientation forKey:APPIUM_PLIST_IOS_USE_ORIENTATION]; }

-(BOOL) useUDID { return [_defaults boolForKey:APPIUM_PLIST_IOS_USE_UDID]; }
-(void) setUseUDID:(BOOL)useUDID { [_defaults setBool:useUDID forKey:APPIUM_PLIST_IOS_USE_UDID]; }


#pragma mark - Methods

-(NSString*) xcodePath
{
	@try
	{
		NSString *path = [Utility runTaskWithBinary:@"/usr/bin/xcode-select" arguments:[NSArray arrayWithObject:@"--print-path"]];
		path = [path stringByReplacingOccurrencesOfString:@"\n" withString:@""];
		if ([path hasSuffix:@"/Contents/Developer"])
		{
			path = [path substringWithRange:NSMakeRange(0, path.length - @"/Contents/Developer".length)];
		}
		return path;
	}
	@catch (NSException *exception) {
		return @"/";
	}
}

-(void) setXcodePath:(NSString *)xcodePath
{
	NSAppleScript	*xcodeSelectScript;
	NSMutableDictionary *errorDict = [NSMutableDictionary new];
	xcodeSelectScript = [[NSAppleScript alloc] initWithSource:
						 [NSString stringWithFormat:@"do shell script \"/usr/bin/xcode-select --switch \\\"%@\\\"\" with administrator privileges", xcodePath]];
	[[xcodeSelectScript executeAndReturnError:&errorDict] stringValue];
	
	// update xcode path
	NSLog(@"New Xcode Path: %@", self.xcodePath);
}

@end
