//
//  WDRAPIClient.m
//  WUNDER
//
//  Created by Connor Montgomery on 4/8/17.
//  Copyright © 2017 Connor Montgomery. All rights reserved.
//

#import "WDRAPIClient.h"

#import "WDRList.h"
#import "WDRTask.h"


@implementation WDRAPIClient

- (NSURL *)baseURL
{
    return [NSURL URLWithString:@"http://a.wunderlist.com/api/v1/"];
}

/*+ (instancetype)manager
{
    static WDRAPIClient *apiClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        apiClient = [[self alloc] init];
    });
    return apiClient;
}*/

- (instancetype)initWithBaseURL:(NSURL *)url
{
    self = [super initWithBaseURL:url];
    if (self) {
        self.responseSerializer = [AFJSONResponseSerializer serializer];
        self.requestSerializer = [AFJSONRequestSerializer serializer];
        [self addAdditionalRequestHeaders];
    }
    return self;
}

- (void)addAdditionalRequestHeaders
{
    NSString *jsonFilePath = [[NSBundle mainBundle] pathForResource:@"WUNDERLIST_API_KEYS" ofType:@"json"];
    if (!jsonFilePath) {
        NSAssert(NO, @"Missing WUNDERLIST_API_KEYS.json file.");
    }
    
    NSError *error = nil;
    NSInputStream *inputStream = [[NSInputStream alloc] initWithFileAtPath:jsonFilePath];
    [inputStream open];
    id jsonObject = [NSJSONSerialization JSONObjectWithStream: inputStream
                                                      options:kNilOptions
                                                        error:&error];
    [inputStream close];
    if (error) {
        NSAssert(NO, @"Error parsing WUNDERLIST_API_KEYS.json value.");
    }
    
    [self.requestSerializer setValue:[jsonObject valueForKey:@"access_token"] forHTTPHeaderField:@"X-Access-Token"];
    [self.requestSerializer setValue:[jsonObject valueForKey:@"client_id"] forHTTPHeaderField:@"X-Client-ID"];
}

- (void)fetchListsWithSuccess:(void (^)(NSArray<WDRList *> *))success andFailure:(void (^)(NSError *))failure
{
    [[WDRAPIClient manager] GET:@"lists"
                     parameters:nil
                       progress:nil
                        success:^(NSURLSessionDataTask * _Nonnull task, id _Nullable responseObject) {
                            NSArray *responseArray = responseObject;
                            NSMutableArray<WDRList *> *lists = [[NSMutableArray alloc] init];
                            for (NSDictionary *responseDict in responseArray) {
                                WDRList *list = [[WDRList alloc] initWithModelDictionary:responseDict];
                                [lists addObject:list];
                            }
                            success(lists);
                        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                            if (failure != nil) {
                                failure(error);
                            }
                        }];
}

- (void)fetchTasksForList:(WDRList *)list withSuccess:(void (^)(NSArray<WDRTask *> *))success andFailure:(void (^)(NSError *))failure
{
    
}

@end
