//
//  WDRModelCollection.h
//  WUNDER
//
//  Created by Connor Montgomery on 4/8/17.
//  Copyright © 2017 Connor Montgomery. All rights reserved.
//

#import <Foundation/Foundation.h>

@class WDRList;
@class WDRTask;

@interface WDRModelCollection : NSObject

+ (instancetype)sharedCollection;

- (void)setLists:(NSArray<WDRList *> *)lists;
- (void)setTasks:(NSArray<WDRTask *> *)tasks forList:(WDRList *)list;
- (NSArray<WDRTask *> *)tasksForToday;
- (void)removeAllTasks;

@property (nonatomic, strong, readonly) NSArray<WDRList *> *lists;
@property (nonatomic, strong, readonly) NSArray<WDRTask *> *tasks;

@end
