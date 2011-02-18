//
//  EnumerableCompositeAppDelegate.h
//  EnumerableComposite
//
//  Created by Tobias Preuss on 17.02.11.
//  Copyright 2011 Tobias Preuss. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface EnumerableCompositeAppDelegate : NSObject <NSApplicationDelegate> {
	
    NSWindow* window;
}

@property (assign) IBOutlet NSWindow *window;

@end
