//
//  AppiumInspectorDelegate.h
//  Appium
//
//  Created by Dan Cuellar on 3/13/13.
//  Copyright (c) 2013 Appium. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WebDriverElementNode.h"
#import "AppiumInspectorScreenshotImageView.h"

@class WebDriverElementNode;
@class AppiumInspectorScreenshotImageView;

@interface AppiumInspectorDelegate : NSObject {
@private
	IBOutlet NSBrowser *_browser;
	IBOutlet NSTextView *_detailsTextView;
	IBOutlet AppiumInspectorScreenshotImageView *_screenshotView;
	IBOutlet NSView *_highlightView;
	IBOutlet NSView *_drawerContentView;
	IBOutlet NSTextView *_drawerContentTextView;
	WebDriverElementNode *_rootNode;
    WebDriverElementNode *_browserRootNode;
    BOOL _showDisabled;
    BOOL _showInvisible;
	BOOL _isRecording;
	NSDrawer *_drawer;
}

@property NSNumber *showDisabled;
@property NSNumber *showInvisible;
@property NSString *keysToSend;
@property BOOL domIsPopulating;
@property NSNumber *isRecording;

-(void)selectNodeNearestPoint:(NSPoint)point;

@end
