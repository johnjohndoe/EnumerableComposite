//
//  FooObject.h
//  EnumerableComposite
//
//  Created by Tobias Preuss on 17.02.11.
//  Copyright 2011 Tobias Preuss. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "FooProtocol.h"


@interface FooObject : NSObject<FooProtocol> {

	NSString*		m_name;
}

- (id)initWithName:(NSString*)name;

@end
