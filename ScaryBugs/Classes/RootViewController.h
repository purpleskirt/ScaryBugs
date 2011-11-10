//
//  RootViewController.h
//  ScaryBugs
//
//  Created by LY on 11/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class EditBugViewController;

@interface RootViewController : UITableViewController 
{
	NSMutableArray *_bugs;
	EditBugViewController *_editBugViewController;
}
@property (retain) NSMutableArray *bugs;
@property (retain) EditBugViewController *editBugViewController;

@end
