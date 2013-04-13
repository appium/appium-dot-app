//
//  AppiumInspectorDelegate.h
//  Appium
//
//  Created by Dan Cuellar on 3/13/13.
//  Copyright (c) 2013 Appium. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Selenium/SERemoteWebDriver.h>
#import "AppiumCodeMakerLocator.h"
#import "AppiumInspectorWindowController.h"
#import "WebDriverElementNode.h"

@class AppiumCodeMakerLocator;
@class AppiumInspectorWindowController;
@class SERemoteWebDriver;
@class SEWebElement;
@class WebDriverElementNode;

@interface AppiumInspectorDelegate : NSObject {

@private
	IBOutlet AppiumInspectorWindowController *_windowController;
	BOOL _showDisabled;
    BOOL _showInvisible;
	WebDriverElementNode *_rootNode;
    WebDriverElementNode *_browserRootNode;
	NSMutableArray *_selectedIndexes;
	NSString *_lastPageSource;
}

@property WebDriverElementNode *selection;
@property NSNumber *showDisabled;
@property NSNumber *showInvisible;
@property BOOL domIsPopulating;

-(SEWebElement*) elementForSelectedNode;
-(NSString*) xPathForSelectedNode;
-(AppiumCodeMakerLocator*) locatorForSelectedNode;

-(void) handleClickAt:(NSPoint)windowPoint seleniumPoint:(NSPoint)seleniumPoint;
-(IBAction)refresh:(id)sender;

@end
