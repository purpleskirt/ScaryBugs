//
//  ScaryBugDoc.h
//  ScaryBugs
//
//  Created by LY on 11/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ScaryBugData;

@interface ScaryBugDoc : NSObject {
    ScaryBugData *_data;
    UIImage *_thumbImage;
    UIImage *_fullImage;
}

@property (retain) ScaryBugData *data;
@property (retain) UIImage *thumbImage;
@property (retain) UIImage *fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage;

@end