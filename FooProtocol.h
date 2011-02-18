//
//  FooProtocol.h
//  EnumerableComposite
//
//  Created by Tobias Preuss on 17.02.11.
//  Copyright 2011 Tobias Preuss. All rights reserved.
//

#import <Cocoa/Cocoa.h>


#define UnsupportedOperationException(obj,sel) { \
	[NSException raise:@"UnsupportedOperationException" \
				format:@"UnsupportedOperationException: The selector %@ cannot be used on the object %@.", \
						NSStringFromSelector(sel), obj]; \
}


@protocol FooProtocol<NSFastEnumeration>

- (void)addFoo:(id<FooProtocol>)foo;
- (void)removeFoo:(id<FooProtocol>)foo;
- (NSString*)description;

@end
