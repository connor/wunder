//
//  AppDelegate.m
//  WUNDER
//
//  Created by Connor Montgomery on 4/8/17.
//  Copyright © 2017 Connor Montgomery. All rights reserved.
//

#import "AppDelegate.h"
#import "WDRAPIClient.h"
#import "WDRModelCollection.h"
#import "WDRTask.h"

static NSInteger const MAX_STRING_LENGTH = 30;
static NSInteger const MINS_UNTIL_REFRESH = 5;

@interface AppDelegate ()

@property (nonatomic, strong) NSStatusItem *statusItem;
@property (nonatomic, strong) NSMenu *statusItemMenu;
@property (nonatomic, strong) NSArray<WDRTask *> *todayTasks;
@property (weak, nonatomic) NSTimer *statusTitleTimer;

@property (weak) IBOutlet NSWindow *window;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    self.statusItemMenu = [[NSMenu alloc] init];
    self.statusItem.menu = self.statusItemMenu;
    self.statusItem.highlightMode = YES;
    [self.statusItemMenu setAutoenablesItems:NO];

    [self resetTaskList];
}

- (void)resetTaskList
{
    [[WDRAPIClient manager] fetchAllTasksWithSuccess:^{
        _todayTasks = [[WDRModelCollection sharedCollection] tasksForToday];
        [self addTasksToMenu];
    } andFailure:nil];
}

- (void)setRandomStatusTitle
{
    NSArray<WDRTask *> *tasks = self.todayTasks;
    NSString *title = nil;
    if (tasks.count == 0) {
        title = @"No more tasks today — high five!";
    } else {
        NSUInteger randomIndex = arc4random() % [tasks count];
        WDRTask *task = [tasks objectAtIndex:randomIndex];
        title = [self reasonablySizedVersionOfString:task.title];
        
        if (task.completed) {
            if ([self hasRemainingTasks]) {
                [self setRandomStatusTitle];
                return;
            } else {
                title = [NSString stringWithFormat:@"✓ — %@", title];
            }
        }
    }
    
    [self setStatusItemTitle:title];
}

- (BOOL)hasRemainingTasks
{
    NSArray<WDRTask *> *tasks = self.todayTasks;
    for (WDRTask *task in tasks) {
        if (task.completed == NO) {
            return YES;
        }
    }
    return NO;
}


- (void)addTasksToMenu
{
    NSArray<WDRTask *> *tasks = self.todayTasks;
    for (WDRTask *task in tasks) {
        [self addTaskToMenu:task];
    }
    [self setRandomStatusTitle];

    [self addSeparatorItem];
    [self addRefreshItem];
    [self addQuitItem];
}

- (void)addSeparatorItem
{
    NSArray<WDRTask *> *tasks = self.todayTasks;
    NSMenuItem *separatorItem = [NSMenuItem separatorItem];
    [self.statusItemMenu insertItem:separatorItem atIndex:[tasks count]];
}

- (void)addRefreshItem
{
    NSArray<WDRTask *> *tasks = self.todayTasks;
    [self.statusItemMenu insertItemWithTitle:@"Refresh Tasks" action:@selector(onRefreshClick:) keyEquivalent:@"" atIndex:[tasks count] + 1];
}

- (void)addQuitItem
{
    NSArray<WDRTask *> *tasks = self.todayTasks;
    [self.statusItemMenu insertItemWithTitle:@"Quit" action:@selector(onQuitClick:) keyEquivalent:@"q" atIndex:[tasks count] + 2];
}

- (void)onQuitClick:(id)sender
{
    [[NSApplication sharedApplication] terminate:self];
}

- (void)onRefreshClick:(id)sender
{
    [self.statusItemMenu removeAllItems];
    [[WDRModelCollection sharedCollection] removeAllTasks];
    [self resetTaskList];
}

- (void)addTaskToMenu:(WDRTask *)task
{
    NSString *title = task.title;
    BOOL completed = task.completed;
 
    NSMenuItem *menuItem = [[NSMenuItem alloc] initWithTitle:[self reasonablySizedVersionOfString:title]
                                                      action:@selector(onStatusMenuItemClick:) keyEquivalent:@""];

    if (completed) {
        [menuItem setEnabled:NO];
        [menuItem setState:1];
    }
    
    [self.statusItemMenu insertItem:menuItem atIndex:0];
}

- (NSString *)reasonablySizedVersionOfString:(NSString *)originalString {
	NSInteger stringLength = [originalString length];
	if (stringLength > MAX_STRING_LENGTH) {
		return [NSString stringWithFormat:@"%@…%@",
                [originalString substringWithRange:NSMakeRange(0, MAX_STRING_LENGTH)],
                [originalString substringWithRange:NSMakeRange(stringLength - MAX_STRING_LENGTH, 0)]];
	}
	return [NSString stringWithString:originalString];
    
}

- (void)onStatusMenuItemClick: sender{
    NSString *title = [sender title];
    [self setStatusItemTitle:title];
    [self resetStatusTitleTimer];
}

- (void)setStatusItemTitle:(NSString *)title{
    self.statusItem.title = title;
}

- (void)resetStatusTitleTimer {
    if (self.statusTitleTimer != nil) {
        [self.statusTitleTimer invalidate];
    }
    self.statusTitleTimer = [NSTimer scheduledTimerWithTimeInterval:MINS_UNTIL_REFRESH * 60 target:self selector:@selector(resetTaskList) userInfo:nil repeats:YES];
}

@end
