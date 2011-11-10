//
//  ScaryBugData.h
//  ScaryBugs
//
//  Created by LY on 11/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScaryBugData : NSObject {
    NSString *_title;
    float _rating;
}

@property (copy) NSString *title;
@property  float rating;

- (id)initWithTitle:(NSString*)title rating:(float)rating;

@end
