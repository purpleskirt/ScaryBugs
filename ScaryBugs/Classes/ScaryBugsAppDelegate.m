//
//  ScaryBugsAppDelegate.m
//  ScaryBugs
//
//  Created by LY on 11/7/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ScaryBugsAppDelegate.h"
#import "RootViewController.h"
#import "ScaryBugDoc.h"

@implementation ScaryBugsAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
    ScaryBugDoc *bug1 = [[[ScaryBugDoc alloc] initWithTitle:@"Ant" rating:4 thumbImage:[UIImage imageNamed:@"antThumb.png"] fullImage:[UIImage imageNamed:@"ant.png"]] autorelease];
    ScaryBugDoc *bug2 = [[[ScaryBugDoc alloc] initWithTitle:@"Dim" rating:3 thumbImage:[UIImage imageNamed:@"dimThumb.png"] fullImage:[UIImage imageNamed:@"dim.png"]] autorelease];
    ScaryBugDoc *bug3 = [[[ScaryBugDoc alloc] initWithTitle:@"Atta" rating:5 thumbImage:[UIImage imageNamed:@"attaThumb.png"] fullImage:[UIImage imageNamed:@"atta.png"]] autorelease];
    ScaryBugDoc *bug4 = [[[ScaryBugDoc alloc] initWithTitle:@"Hopper" rating:1 thumbImage:[UIImage imageNamed:@"hopperThumb.png"] fullImage:[UIImage imageNamed:@"hopper.png"]] autorelease];
	ScaryBugDoc *bug5 = [[[ScaryBugDoc alloc] initWithTitle:@"Purple" rating:1 thumbImage:[UIImage imageNamed:@"purpleThumb.png"] fullImage:[UIImage imageNamed:@"purple.png"]] autorelease];
	NSMutableArray *bugs = [NSMutableArray arrayWithObjects:bug1, bug2, bug3, bug4, bug5, nil];
    RootViewController *rootController = (RootViewController *) [navigationController.viewControllers objectAtIndex:0];
    rootController.bugs = bugs;
    
    // Add the navigation controller's view to the window and display.
    [window addSubview:navigationController.view];
    [window makeKeyAndVisible];
	
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

