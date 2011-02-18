//
//  FooObject.m
//  EnumerableComposite
//
//  Created by Tobias Preuss on 17.02.11.
//  Copyright 2011 Tobias Preuss. All rights reserved.
//

#import "FooObject.h"


@implementation FooObject

#pragma mark -
#pragma mark LifeCycle

- (id)init {
	
	self = [super init];
	if (self != nil) {
		m_name = nil;
	}
	return self;
}


- (id)initWithName:(NSString*)name {
	
	self = [self init];
	if (self != nil) {
		m_name = name;
	}
	return self;
}

#pragma mark -
#pragma mark FooProtocol

- (void)addFoo:(id<FooProtocol>)foo {

	UnsupportedOperationException(self,_cmd);
}


- (void)removeFoo:(id<FooProtocol>)foo {
	
	UnsupportedOperationException(self,_cmd);
}

- (id<FooProtocol>)findFoo:(id<FooProtocol>)foo {
	
	UnsupportedOperationException(self,_cmd);
	return nil;
}

- (NSString*)description {
	
	return m_name;
}

#pragma mark -
#pragma mark NSFastEnumeration

- (NSUInteger)countByEnumeratingWithState:(NSFastEnumerationState*)state objects:(id*)stackbuf count:(NSUInteger)len {

	// The exception can be uncommented. Returning zero is an option depending on the way you want to use the class.
	UnsupportedOperationException(self,_cmd);
	return 0;
}

#pragma mark -
#pragma mark Comparison

- (BOOL)isEqual:(id)other {
	
	if (other == self) {
		return YES;
	}
	if (!other || ![other isKindOfClass:[self class]]) {
		return NO;
	}
	if ([self hash] == [other hash]) {
		return YES;
	}
	return NO;
}


- (NSUInteger)hash {
	
	return [m_name hash];
}



@end
