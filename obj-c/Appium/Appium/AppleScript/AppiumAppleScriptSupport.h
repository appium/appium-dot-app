//
//  AppiumAppleScriptSupport.h
//  Appium
//
//  Created by Dan Cuellar on 3/4/13.
//  Copyright (c) 2013 Appium. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>
#import "AppiumModel.h"

@interface NSApplication (AppiumAppleScriptSupport)

@property (readonly) AppiumModel *model;

@property (readonly) NSNumber *s_IsServerRunning;
@property NSString *s_IPAddress;
@property NSNumber *s_Port;
@property NSNumber *s_UseAppPath;
@property NSString *s_AppPath;
@property NSNumber *s_UseUDID;
@property NSString *s_UDID;
@property NSNumber *s_UseAndroidPackage;
@property NSString *s_AndroidPackage;
@property NSNumber *s_UseAndroidActivity;
@property NSString *s_AndroidActivity;
@property NSNumber *s_SkipAndroidInstall;
@property NSNumber *s_PrelaunchApp;
@property NSNumber *s_KeepArtifacts;
@property NSNumber *s_UseInstrumentsWithoutDelay;
@property NSNumber *s_UseWarp;
@property NSNumber *s_ResetApplicationState;
@property NSNumber *s_CheckForUpdates;
@property (readonly)NSString *s_LogText;

-(NSNumber*) s_StartServer: (NSScriptCommand*)command;
-(NSNumber*) s_StopServer: (NSScriptCommand*)command;
-(void) s_ClearLog: (NSScriptCommand*)command;
-(void) s_UsePlatform: (NSScriptCommand*)command;
-(void) s_ForceiOSDevice:(NSScriptCommand*)command;
@end
