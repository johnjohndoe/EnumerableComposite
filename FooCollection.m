//
//  FooCollection.m
//  EnumerableComposite
//
//  Created by Tobias Preuss on 17.02.11.
//  Copyright 2011 Tobias Preuss. All rights reserved.
//

#import "FooCollection.h"


@implementation FooCollection

#pragma mark -
#pragma mark LifeCycle

- (id)init {
	
	self = [super init];
	if (self != nil) {
		m_foos = [NSMutableSet set];
	}
	return self;
}

#pragma mark -
#pragma mark FooProtocol

- (void)addFoo:(id<FooProtocol>)foo {
	
	[m_foos addObject:foo];
}

- (void)removeFoo:(id<FooProtocol>)foo {
	
	[m_foos removeObject:foo];
}

- (NSString*)description {
	
	NSMutableString* desc = [NSMutableString string];
	for (id<FooProtocol> foo in m_foos) {
		[desc appendString:[foo description]];
		[desc appendString:@", "];
	}
	return desc;
}

#pragma mark -
#pragma mark NSFastEnumeration


- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState*)state objects:(id*)stackbuf count:(NSUInteger)len {
	
	return [m_foos countByEnumeratingWithState:state objects:stackbuf count:len];
}


@end
