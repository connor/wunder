//
//  WDRAPIClient.h
//  WUNDER
//
//  Created by Connor Montgomery on 4/8/17.
//  Copyright © 2017 Connor Montgomery. All rights reserved.
//

#import <AFNetworking.h>

@class WDRList;
@class WDRTask;

@interface WDRAPIClient : AFHTTPSessionManager

- (void)fetchListsWithSuccess:(void (^)(NSArray<WDRList *> *lists))success andFailure:(void (^)(NSError *error))failure;
- (void)fetchTasksForList:(WDRList *)list withSuccess:(void (^)(NSArray<WDRTask *> *tasks))success andFailure:(void (^)(NSError *error))failure;
// TODO - (void)fetchAllTasksWithSuccess:(void (^)(NSArray<WDRTask *> *tasks))success andFailure:(void (^)(NSError *error))failure;

@property (nonatomic, strong, readonly) NSMutableArray<WDRList *> *taskLists;
@property (nonatomic, strong, readonly) NSMutableArray<WDRTask *> *taskTasks;

@end
