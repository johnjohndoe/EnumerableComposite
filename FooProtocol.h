//
//  FooProtocol.h
//  EnumerableComposite
//
//  Created by Tobias Preuss on 17.02.11.
//  Copyright 2011 Tobias Preuss. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@protocol FooProtocol<NSFastEnumeration>

- (void)addFoo:(id<FooProtocol>)foo;
- (void)removeFoo:(id<FooProtocol>)foo;
- (NSString*)description;

@end
