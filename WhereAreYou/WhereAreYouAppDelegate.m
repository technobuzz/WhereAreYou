//
//  WhereAreYouAppDelegate.m
//  WhereAreYou
//
//  Created by David Bloom on 6/15/14.
//  Copyright (c) 2014 David Bloom. All rights reserved.
//

#import "WhereAreYouAppDelegate.h"
#import "WhereAreYouVC.h"

@implementation WhereAreYouAppDelegate





- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.viewController = [[WhereAreYouVC alloc] initWithNibName:@"WhereAreYouVC" bundle:nil];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}


@end
