//
//  EnumerableCompositeAppDelegate.m
//  EnumerableComposite
//
//  Created by Tobias Preuss on 17.02.11.
//  Copyright 2011 Tobias Preuss. All rights reserved.
//

#import "EnumerableCompositeAppDelegate.h"
#import "FooCollection.h"
#import "FooObject.h"


@implementation EnumerableCompositeAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

	id<FooProtocol> flist = [[FooCollection alloc] init];
	
	id<FooProtocol> f1 = [[FooObject alloc] initWithName:@"f1"];
	id<FooProtocol> f2 = [[FooObject alloc] initWithName:@"f2"];
	id<FooProtocol> f3 = [[FooObject alloc] initWithName:@"f3"];
	
	[flist addFoo:f1];
	NSLog(@"Collection = %@", flist); /* DEBUG LOG */
	[flist addFoo:f2];
	NSLog(@"Collection = %@", flist); /* DEBUG LOG */
	[flist addFoo:f3];
	NSLog(@"Collection = %@", flist); /* DEBUG LOG */
	
	[flist removeFoo:f1];
	NSLog(@"Collection = %@", flist); /* DEBUG LOG */
	[flist removeFoo:f1];
	NSLog(@"Collection = %@", flist); /* DEBUG LOG */
	

	@try {
		[f1 addFoo:f2];
	}
	@catch (NSException * e) {
		NSLog(@"%@", e); /* DEBUG LOG */
	}
	
	@try {
		[f1 removeFoo:f2];
	}
	@catch (NSException * e) {
		NSLog(@"%@", e); /* DEBUG LOG */
	}
	
	@try {
		for (id<FooProtocol> foo in f1) {
			NSLog(@"--- %@", foo); /* DEBUG LOG */
		}
	}
	@catch (NSException * e) {
		NSLog(@"%@", e); /* DEBUG LOG */
	}
	
	
	for (id<FooProtocol> foo in flist) {
		NSLog(@"--- %@", foo); /* DEBUG LOG */
	}
	

	NSLog(@"Found f1 in list? --> %@", [flist findFoo:[[FooObject alloc] initWithName:@"f1"]]); /* DEBUG LOG */
	NSLog(@"Found f2 in list? --> %@", [flist findFoo:[[FooObject alloc] initWithName:@"f2"]]); /* DEBUG LOG */

	@try {
		NSLog(@"Found f2 in f1? --> %@", [f1 findFoo:[[FooObject alloc] initWithName:@"f2"]]); /* DEBUG LOG */
	}
	@catch (NSException * e) {
		NSLog(@"%@", e); /* DEBUG LOG */
	}
	
	@try {
		NSLog(@"Found flist in flist? --> %@", [flist findFoo:[[FooCollection alloc] init]]); /* DEBUG LOG */
	}
	@catch (NSException * e) {
		NSLog(@"%@", e); /* DEBUG LOG */
	}
	
}

@end
