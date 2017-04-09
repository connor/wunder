//
//  AppDelegate.m
//  WUNDER
//
//  Created by Connor Montgomery on 4/8/17.
//  Copyright © 2017 Connor Montgomery. All rights reserved.
//

#import "AppDelegate.h"
#import "WDRAPIClient.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [[WDRAPIClient manager] fetchListsWithSuccess:^(NSArray<WDRList *> *lists) {
        
    } andFailure:nil];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
