//
//  WDRTask.m
//  Autogenerated by plank
//
//  DO NOT EDIT - EDITS WILL BE OVERWRITTEN
//  @generated
//

#import "WDRTask.h"

struct WDRTaskDirtyProperties {
    unsigned int WDRTaskDirtyPropertyCompleted:1;
    unsigned int WDRTaskDirtyPropertyCreatedAt:1;
    unsigned int WDRTaskDirtyPropertyCreatedById:1;
    unsigned int WDRTaskDirtyPropertyCreatedByRequestId:1;
    unsigned int WDRTaskDirtyPropertyDueDate:1;
    unsigned int WDRTaskDirtyPropertyIdentifier:1;
    unsigned int WDRTaskDirtyPropertyListId:1;
    unsigned int WDRTaskDirtyPropertyRevision:1;
    unsigned int WDRTaskDirtyPropertyStarred:1;
    unsigned int WDRTaskDirtyPropertyTitle:1;
    unsigned int WDRTaskDirtyPropertyType:1;
};

@interface WDRTask ()
@property (nonatomic, assign, readwrite) struct WDRTaskDirtyProperties taskDirtyProperties;
@end

@interface WDRTaskBuilder ()
@property (nonatomic, assign, readwrite) struct WDRTaskDirtyProperties taskDirtyProperties;
@end

@implementation WDRTask
+ (NSString *)className
{
    return @"WDRTask";
}
+ (NSString *)polymorphicTypeIdentifier
{
    return @"task";
}
+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dictionary
{
    return [[self alloc] initWithModelDictionary:dictionary];
}
- (instancetype)init
{
    return [self initWithModelDictionary:@{}];
}
- (instancetype)initWithModelDictionary:(NSDictionary *)modelDictionary
{
    NSParameterAssert(modelDictionary);
    if (!(self = [super init])) {
        return self;
    }
    [modelDictionary enumerateKeysAndObjectsUsingBlock:^(NSString *  _Nonnull key, id  _Nonnull obj, __unused BOOL * _Nonnull stop){
        if ([key isEqualToString:@"revision"]) {
            id value = valueOrNil(modelDictionary, @"revision");
            if (value != nil) {
                self->_revision = value;
            }
            self->_taskDirtyProperties.WDRTaskDirtyPropertyRevision = 1;
        }
        if ([key isEqualToString:@"due_date"]) {
            id value = valueOrNil(modelDictionary, @"due_date");
            if (value != nil) {
                self->_dueDate = value;
            }
            self->_taskDirtyProperties.WDRTaskDirtyPropertyDueDate = 1;
        }
        if ([key isEqualToString:@"starred"]) {
            id value = valueOrNil(modelDictionary, @"starred");
            if (value != nil) {
                self->_starred = [value boolValue];
            }
            self->_taskDirtyProperties.WDRTaskDirtyPropertyStarred = 1;
        }
        if ([key isEqualToString:@"created_by_id"]) {
            id value = valueOrNil(modelDictionary, @"created_by_id");
            if (value != nil) {
                self->_createdById = value;
            }
            self->_taskDirtyProperties.WDRTaskDirtyPropertyCreatedById = 1;
        }
        if ([key isEqualToString:@"id"]) {
            id value = valueOrNil(modelDictionary, @"id");
            if (value != nil) {
                self->_identifier = value;
            }
            self->_taskDirtyProperties.WDRTaskDirtyPropertyIdentifier = 1;
        }
        if ([key isEqualToString:@"completed"]) {
            id value = valueOrNil(modelDictionary, @"completed");
            if (value != nil) {
                self->_completed = [value boolValue];
            }
            self->_taskDirtyProperties.WDRTaskDirtyPropertyCompleted = 1;
        }
        if ([key isEqualToString:@"created_at"]) {
            id value = valueOrNil(modelDictionary, @"created_at");
            if (value != nil) {
                self->_createdAt = [[NSValueTransformer valueTransformerForName:kPlankDateValueTransformerKey] transformedValue:value];
            }
            self->_taskDirtyProperties.WDRTaskDirtyPropertyCreatedAt = 1;
        }
        if ([key isEqualToString:@"title"]) {
            id value = valueOrNil(modelDictionary, @"title");
            if (value != nil) {
                self->_title = value;
            }
            self->_taskDirtyProperties.WDRTaskDirtyPropertyTitle = 1;
        }
        if ([key isEqualToString:@"type"]) {
            id value = valueOrNil(modelDictionary, @"type");
            if (value != nil) {
                self->_type = value;
            }
            self->_taskDirtyProperties.WDRTaskDirtyPropertyType = 1;
        }
        if ([key isEqualToString:@"created_by_request_id"]) {
            id value = valueOrNil(modelDictionary, @"created_by_request_id");
            if (value != nil) {
                self->_createdByRequestId = value;
            }
            self->_taskDirtyProperties.WDRTaskDirtyPropertyCreatedByRequestId = 1;
        }
        if ([key isEqualToString:@"list_id"]) {
            id value = valueOrNil(modelDictionary, @"list_id");
            if (value != nil) {
                self->_listId = value;
            }
            self->_taskDirtyProperties.WDRTaskDirtyPropertyListId = 1;
        }
    }];
    if ([self class] == [WDRTask class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(PlankModelInitTypeDefault) }];
    }
    return self;
}
- (instancetype)initWithBuilder:(WDRTaskBuilder *)builder
{
    NSParameterAssert(builder);
    return [self initWithBuilder:builder initType:PlankModelInitTypeDefault];
}
- (instancetype)initWithBuilder:(WDRTaskBuilder *)builder initType:(PlankModelInitType)initType
{
    NSParameterAssert(builder);
    if (!(self = [super init])) {
        return self;
    }
    _revision = builder.revision;
    _dueDate = builder.dueDate;
    _starred = builder.starred;
    _createdById = builder.createdById;
    _identifier = builder.identifier;
    _completed = builder.completed;
    _createdAt = builder.createdAt;
    _title = builder.title;
    _type = builder.type;
    _createdByRequestId = builder.createdByRequestId;
    _listId = builder.listId;
    _taskDirtyProperties = builder.taskDirtyProperties;
    if ([self class] == [WDRTask class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(initType) }];
    }
    return self;
}
- (NSString *)debugDescription
{
    NSArray<NSString *> *parentDebugDescription = [[super debugDescription] componentsSeparatedByString:@"\n"];
    NSMutableArray *descriptionFields = [NSMutableArray arrayWithCapacity:11];
    [descriptionFields addObject:parentDebugDescription];
    struct WDRTaskDirtyProperties props = _taskDirtyProperties;
    if (props.WDRTaskDirtyPropertyRevision) {
        [descriptionFields addObject:[@"_revision = " stringByAppendingFormat:@"%@", _revision]];
    }
    if (props.WDRTaskDirtyPropertyDueDate) {
        [descriptionFields addObject:[@"_dueDate = " stringByAppendingFormat:@"%@", _dueDate]];
    }
    if (props.WDRTaskDirtyPropertyStarred) {
        [descriptionFields addObject:[@"_starred = " stringByAppendingFormat:@"%@", @(_starred)]];
    }
    if (props.WDRTaskDirtyPropertyCreatedById) {
        [descriptionFields addObject:[@"_createdById = " stringByAppendingFormat:@"%@", _createdById]];
    }
    if (props.WDRTaskDirtyPropertyIdentifier) {
        [descriptionFields addObject:[@"_identifier = " stringByAppendingFormat:@"%@", _identifier]];
    }
    if (props.WDRTaskDirtyPropertyCompleted) {
        [descriptionFields addObject:[@"_completed = " stringByAppendingFormat:@"%@", @(_completed)]];
    }
    if (props.WDRTaskDirtyPropertyCreatedAt) {
        [descriptionFields addObject:[@"_createdAt = " stringByAppendingFormat:@"%@", _createdAt]];
    }
    if (props.WDRTaskDirtyPropertyTitle) {
        [descriptionFields addObject:[@"_title = " stringByAppendingFormat:@"%@", _title]];
    }
    if (props.WDRTaskDirtyPropertyType) {
        [descriptionFields addObject:[@"_type = " stringByAppendingFormat:@"%@", _type]];
    }
    if (props.WDRTaskDirtyPropertyCreatedByRequestId) {
        [descriptionFields addObject:[@"_createdByRequestId = " stringByAppendingFormat:@"%@", _createdByRequestId]];
    }
    if (props.WDRTaskDirtyPropertyListId) {
        [descriptionFields addObject:[@"_listId = " stringByAppendingFormat:@"%@", _listId]];
    }
    return [NSString stringWithFormat:@"WDRTask = {\n%@\n}", debugDescriptionForFields(descriptionFields)];
}
- (instancetype)copyWithBlock:(PLANK_NOESCAPE void (^)(WDRTaskBuilder *builder))block
{
    NSParameterAssert(block);
    WDRTaskBuilder *builder = [[WDRTaskBuilder alloc] initWithModel:self];
    block(builder);
    return [builder build];
}
- (BOOL)isEqual:(id)anObject
{
    if (self == anObject) {
        return YES;
    }
    if ([anObject isKindOfClass:[WDRTask class]] == NO) {
        return NO;
    }
    return [self isEqualToTask:anObject];
}
- (BOOL)isEqualToTask:(WDRTask *)anObject
{
    return (
        (anObject != nil) &&
        (self == anObject) &&
        (_completed == anObject.completed) &&
        (_starred == anObject.starred) &&
        (_revision == anObject.revision || [_revision isEqualToString:anObject.revision]) &&
        (_dueDate == anObject.dueDate || [_dueDate isEqualToString:anObject.dueDate]) &&
        (_createdById == anObject.createdById || [_createdById isEqualToString:anObject.createdById]) &&
        (_identifier == anObject.identifier || [_identifier isEqualToString:anObject.identifier]) &&
        (_createdAt == anObject.createdAt || [_createdAt isEqualToDate:anObject.createdAt]) &&
        (_title == anObject.title || [_title isEqualToString:anObject.title]) &&
        (_type == anObject.type || [_type isEqualToString:anObject.type]) &&
        (_createdByRequestId == anObject.createdByRequestId || [_createdByRequestId isEqualToString:anObject.createdByRequestId]) &&
        (_listId == anObject.listId || [_listId isEqualToString:anObject.listId])
    );
}
- (NSUInteger)hash
{
    NSUInteger subhashes[] = {
        17,
        [_revision hash],
        [_dueDate hash],
        (_starred ? 1231 : 1237),
        [_createdById hash],
        [_identifier hash],
        (_completed ? 1231 : 1237),
        [_createdAt hash],
        [_title hash],
        [_type hash],
        [_createdByRequestId hash],
        [_listId hash]
    };
    return PINIntegerArrayHash(subhashes, sizeof(subhashes) / sizeof(subhashes[0]));
}
- (instancetype)mergeWithModel:(WDRTask *)modelObject
{
    return [self mergeWithModel:modelObject initType:PlankModelInitTypeFromMerge];
}
- (instancetype)mergeWithModel:(WDRTask *)modelObject initType:(PlankModelInitType)initType
{
    NSParameterAssert(modelObject);
    WDRTaskBuilder *builder = [[WDRTaskBuilder alloc] initWithModel:self];
    [builder mergeWithModel:modelObject];
    return [[WDRTask alloc] initWithBuilder:builder initType:initType];
}
#pragma mark - NSCopying
- (id)copyWithZone:(NSZone *)zone
{
    return self;
}
#pragma mark - NSSecureCoding
+ (BOOL)supportsSecureCoding
{
    return YES;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (!(self = [super init])) {
        return self;
    }
    _revision = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"revision"];
    _dueDate = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"due_date"];
    _starred = [aDecoder decodeBoolForKey:@"starred"];
    _createdById = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"created_by_id"];
    _identifier = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"id"];
    _completed = [aDecoder decodeBoolForKey:@"completed"];
    _createdAt = [aDecoder decodeObjectOfClass:[NSDate class] forKey:@"created_at"];
    _title = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"title"];
    _type = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"type"];
    _createdByRequestId = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"created_by_request_id"];
    _listId = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"list_id"];
    _taskDirtyProperties.WDRTaskDirtyPropertyRevision = [aDecoder decodeIntForKey:@"revision_dirty_property"] & 0x1;
    _taskDirtyProperties.WDRTaskDirtyPropertyDueDate = [aDecoder decodeIntForKey:@"due_date_dirty_property"] & 0x1;
    _taskDirtyProperties.WDRTaskDirtyPropertyStarred = [aDecoder decodeIntForKey:@"starred_dirty_property"] & 0x1;
    _taskDirtyProperties.WDRTaskDirtyPropertyCreatedById = [aDecoder decodeIntForKey:@"created_by_id_dirty_property"] & 0x1;
    _taskDirtyProperties.WDRTaskDirtyPropertyIdentifier = [aDecoder decodeIntForKey:@"id_dirty_property"] & 0x1;
    _taskDirtyProperties.WDRTaskDirtyPropertyCompleted = [aDecoder decodeIntForKey:@"completed_dirty_property"] & 0x1;
    _taskDirtyProperties.WDRTaskDirtyPropertyCreatedAt = [aDecoder decodeIntForKey:@"created_at_dirty_property"] & 0x1;
    _taskDirtyProperties.WDRTaskDirtyPropertyTitle = [aDecoder decodeIntForKey:@"title_dirty_property"] & 0x1;
    _taskDirtyProperties.WDRTaskDirtyPropertyType = [aDecoder decodeIntForKey:@"type_dirty_property"] & 0x1;
    _taskDirtyProperties.WDRTaskDirtyPropertyCreatedByRequestId = [aDecoder decodeIntForKey:@"created_by_request_id_dirty_property"] & 0x1;
    _taskDirtyProperties.WDRTaskDirtyPropertyListId = [aDecoder decodeIntForKey:@"list_id_dirty_property"] & 0x1;
    if ([self class] == [WDRTask class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(PlankModelInitTypeDefault) }];
    }
    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.revision forKey:@"revision"];
    [aCoder encodeObject:self.dueDate forKey:@"due_date"];
    [aCoder encodeBool:self.starred forKey:@"starred"];
    [aCoder encodeObject:self.createdById forKey:@"created_by_id"];
    [aCoder encodeObject:self.identifier forKey:@"id"];
    [aCoder encodeBool:self.completed forKey:@"completed"];
    [aCoder encodeObject:self.createdAt forKey:@"created_at"];
    [aCoder encodeObject:self.title forKey:@"title"];
    [aCoder encodeObject:self.type forKey:@"type"];
    [aCoder encodeObject:self.createdByRequestId forKey:@"created_by_request_id"];
    [aCoder encodeObject:self.listId forKey:@"list_id"];
    [aCoder encodeInt:_taskDirtyProperties.WDRTaskDirtyPropertyRevision forKey:@"revision_dirty_property"];
    [aCoder encodeInt:_taskDirtyProperties.WDRTaskDirtyPropertyDueDate forKey:@"due_date_dirty_property"];
    [aCoder encodeInt:_taskDirtyProperties.WDRTaskDirtyPropertyStarred forKey:@"starred_dirty_property"];
    [aCoder encodeInt:_taskDirtyProperties.WDRTaskDirtyPropertyCreatedById forKey:@"created_by_id_dirty_property"];
    [aCoder encodeInt:_taskDirtyProperties.WDRTaskDirtyPropertyIdentifier forKey:@"id_dirty_property"];
    [aCoder encodeInt:_taskDirtyProperties.WDRTaskDirtyPropertyCompleted forKey:@"completed_dirty_property"];
    [aCoder encodeInt:_taskDirtyProperties.WDRTaskDirtyPropertyCreatedAt forKey:@"created_at_dirty_property"];
    [aCoder encodeInt:_taskDirtyProperties.WDRTaskDirtyPropertyTitle forKey:@"title_dirty_property"];
    [aCoder encodeInt:_taskDirtyProperties.WDRTaskDirtyPropertyType forKey:@"type_dirty_property"];
    [aCoder encodeInt:_taskDirtyProperties.WDRTaskDirtyPropertyCreatedByRequestId forKey:@"created_by_request_id_dirty_property"];
    [aCoder encodeInt:_taskDirtyProperties.WDRTaskDirtyPropertyListId forKey:@"list_id_dirty_property"];
}
@end

@implementation WDRTaskBuilder
- (instancetype)initWithModel:(WDRTask *)modelObject
{
    NSParameterAssert(modelObject);
    if (!(self = [super init])) {
        return self;
    }
    struct WDRTaskDirtyProperties taskDirtyProperties = modelObject.taskDirtyProperties;
    if (taskDirtyProperties.WDRTaskDirtyPropertyRevision) {
        _revision = modelObject.revision;
    }
    if (taskDirtyProperties.WDRTaskDirtyPropertyDueDate) {
        _dueDate = modelObject.dueDate;
    }
    if (taskDirtyProperties.WDRTaskDirtyPropertyStarred) {
        _starred = modelObject.starred;
    }
    if (taskDirtyProperties.WDRTaskDirtyPropertyCreatedById) {
        _createdById = modelObject.createdById;
    }
    if (taskDirtyProperties.WDRTaskDirtyPropertyIdentifier) {
        _identifier = modelObject.identifier;
    }
    if (taskDirtyProperties.WDRTaskDirtyPropertyCompleted) {
        _completed = modelObject.completed;
    }
    if (taskDirtyProperties.WDRTaskDirtyPropertyCreatedAt) {
        _createdAt = modelObject.createdAt;
    }
    if (taskDirtyProperties.WDRTaskDirtyPropertyTitle) {
        _title = modelObject.title;
    }
    if (taskDirtyProperties.WDRTaskDirtyPropertyType) {
        _type = modelObject.type;
    }
    if (taskDirtyProperties.WDRTaskDirtyPropertyCreatedByRequestId) {
        _createdByRequestId = modelObject.createdByRequestId;
    }
    if (taskDirtyProperties.WDRTaskDirtyPropertyListId) {
        _listId = modelObject.listId;
    }
    _taskDirtyProperties = taskDirtyProperties;
    return self;
}
- (WDRTask *)build
{
    return [[WDRTask alloc] initWithBuilder:self];
}
- (void)mergeWithModel:(WDRTask *)modelObject
{
    NSParameterAssert(modelObject);
    WDRTaskBuilder *builder = self;
    if (modelObject.taskDirtyProperties.WDRTaskDirtyPropertyRevision) {
        builder.revision = modelObject.revision;
    }
    if (modelObject.taskDirtyProperties.WDRTaskDirtyPropertyDueDate) {
        builder.dueDate = modelObject.dueDate;
    }
    if (modelObject.taskDirtyProperties.WDRTaskDirtyPropertyStarred) {
        builder.starred = modelObject.starred;
    }
    if (modelObject.taskDirtyProperties.WDRTaskDirtyPropertyCreatedById) {
        builder.createdById = modelObject.createdById;
    }
    if (modelObject.taskDirtyProperties.WDRTaskDirtyPropertyIdentifier) {
        builder.identifier = modelObject.identifier;
    }
    if (modelObject.taskDirtyProperties.WDRTaskDirtyPropertyCompleted) {
        builder.completed = modelObject.completed;
    }
    if (modelObject.taskDirtyProperties.WDRTaskDirtyPropertyCreatedAt) {
        builder.createdAt = modelObject.createdAt;
    }
    if (modelObject.taskDirtyProperties.WDRTaskDirtyPropertyTitle) {
        builder.title = modelObject.title;
    }
    if (modelObject.taskDirtyProperties.WDRTaskDirtyPropertyType) {
        builder.type = modelObject.type;
    }
    if (modelObject.taskDirtyProperties.WDRTaskDirtyPropertyCreatedByRequestId) {
        builder.createdByRequestId = modelObject.createdByRequestId;
    }
    if (modelObject.taskDirtyProperties.WDRTaskDirtyPropertyListId) {
        builder.listId = modelObject.listId;
    }
}
- (void)setRevision:(NSString *)revision
{
    _revision = revision;
    _taskDirtyProperties.WDRTaskDirtyPropertyRevision = 1;
}
- (void)setDueDate:(NSString *)dueDate
{
    _dueDate = dueDate;
    _taskDirtyProperties.WDRTaskDirtyPropertyDueDate = 1;
}
- (void)setStarred:(BOOL)starred
{
    _starred = starred;
    _taskDirtyProperties.WDRTaskDirtyPropertyStarred = 1;
}
- (void)setCreatedById:(NSString *)createdById
{
    _createdById = createdById;
    _taskDirtyProperties.WDRTaskDirtyPropertyCreatedById = 1;
}
- (void)setIdentifier:(NSString *)identifier
{
    _identifier = identifier;
    _taskDirtyProperties.WDRTaskDirtyPropertyIdentifier = 1;
}
- (void)setCompleted:(BOOL)completed
{
    _completed = completed;
    _taskDirtyProperties.WDRTaskDirtyPropertyCompleted = 1;
}
- (void)setCreatedAt:(NSDate *)createdAt
{
    _createdAt = createdAt;
    _taskDirtyProperties.WDRTaskDirtyPropertyCreatedAt = 1;
}
- (void)setTitle:(NSString *)title
{
    _title = title;
    _taskDirtyProperties.WDRTaskDirtyPropertyTitle = 1;
}
- (void)setType:(NSString *)type
{
    _type = type;
    _taskDirtyProperties.WDRTaskDirtyPropertyType = 1;
}
- (void)setCreatedByRequestId:(NSString *)createdByRequestId
{
    _createdByRequestId = createdByRequestId;
    _taskDirtyProperties.WDRTaskDirtyPropertyCreatedByRequestId = 1;
}
- (void)setListId:(NSString *)listId
{
    _listId = listId;
    _taskDirtyProperties.WDRTaskDirtyPropertyListId = 1;
}
@end
