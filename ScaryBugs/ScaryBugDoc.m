//
//  ScaryBugDoc.m
//  ScaryBugs
//
//  Created by LY on 11/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ScaryBugDoc.h"
#import "ScaryBugData.h"

@implementation ScaryBugDoc
@synthesize data = _data;
@synthesize thumbImage = _thumbImage;
@synthesize fullImage = _fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage {   
    if ((self = [super init])) {
        _data = [[ScaryBugData alloc] initWithTitle:title rating:rating];
        _thumbImage = [thumbImage retain];
        _fullImage = [fullImage retain];
    }
    return self;
}

- (void)dealloc {
    [_data release];
    _data = nil;   
    [_fullImage release];
    _fullImage = nil;
    [_thumbImage release];
    _thumbImage = nil;
    [super dealloc];
}

@end