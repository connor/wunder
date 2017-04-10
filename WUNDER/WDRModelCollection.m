//
//  WDRModelCollection.m
//  WUNDER
//
//  Created by Connor Montgomery on 4/8/17.
//  Copyright © 2017 Connor Montgomery. All rights reserved.
//

#import "WDRModelCollection.h"

#import "WDRList.h"
#import "WDRTask.h"

@implementation WDRModelCollection

+ (id)sharedCollection {
    static WDRModelCollection *sharedCollection = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedCollection = [[self alloc] init];
    });
    return sharedCollection;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _tasks = [NSArray array];
        _lists = [NSArray array];
    }
    return self;
}

- (NSArray<WDRTask *> *)tasksForToday
{
    NSArray<WDRTask *> *allTasks = self.tasks;
    NSMutableArray<WDRTask *> *tasksDueToday = [NSMutableArray array];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSCalendar* calendar = [NSCalendar currentCalendar];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    for (WDRTask *task in allTasks) {
        if (task.dueDate != nil) {
            NSDate *dateFromString = [dateFormatter dateFromString:task.dueDate];
            if ([calendar isDateInToday:dateFromString]) {
                [tasksDueToday addObject:task];
            }
        }
    }
    return tasksDueToday;
}

- (void)setLists:(NSArray<WDRList *> *)lists
{
    if ([lists isEqualToArray:_lists] == NO) {
        _lists = lists;
    }
}

- (void)removeAllTasks
{
    _tasks = [NSArray array];
    for (int i = 0; i < self.lists.count; i++) {
        WDRList *list = self.lists[i];
        list = [list copyWithBlock:^(WDRListBuilder * _Nonnull builder) {
            builder.tasks = nil;
        }];
    }
}

- (void)setTasks:(NSArray<WDRTask *> *)tasks forList:(WDRList *)list
{
    if (list == nil) {
        NSAssert(NO, @"List must not be nil");
    }
    NSMutableArray *newTasks = [_tasks mutableCopy];
    for (WDRTask *task in tasks) {
        if ([_tasks containsObject:task] == NO) {
            [newTasks addObject:task];
        }
    }
    [list copyWithBlock:^(WDRListBuilder * _Nonnull builder) {
        builder.tasks = tasks;
    }];
    _tasks = newTasks;
}

@end
