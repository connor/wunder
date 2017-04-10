//
//  WDRList.m
//  Autogenerated by plank
//
//  DO NOT EDIT - EDITS WILL BE OVERWRITTEN
//  @generated
//

#import "WDRList.h"

struct WDRListDirtyProperties {
    unsigned int WDRListDirtyPropertyIdentifier:1;
    unsigned int WDRListDirtyPropertyListType:1;
    unsigned int WDRListDirtyPropertyOwnerId:1;
    unsigned int WDRListDirtyPropertyOwnerType:1;
    unsigned int WDRListDirtyPropertyPublic:1;
    unsigned int WDRListDirtyPropertyRevision:1;
    unsigned int WDRListDirtyPropertyTasks:1;
    unsigned int WDRListDirtyPropertyTitle:1;
    unsigned int WDRListDirtyPropertyType:1;
};

@interface WDRList ()
@property (nonatomic, assign, readwrite) struct WDRListDirtyProperties listDirtyProperties;
@end

@interface WDRListBuilder ()
@property (nonatomic, assign, readwrite) struct WDRListDirtyProperties listDirtyProperties;
@end

@implementation WDRList
+ (NSString *)className
{
    return @"WDRList";
}
+ (NSString *)polymorphicTypeIdentifier
{
    return @"list";
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
                self->_revision = [value doubleValue];
            }
            self->_listDirtyProperties.WDRListDirtyPropertyRevision = 1;
        }
        if ([key isEqualToString:@"list_type"]) {
            id value = valueOrNil(modelDictionary, @"list_type");
            if (value != nil) {
                self->_listType = value;
            }
            self->_listDirtyProperties.WDRListDirtyPropertyListType = 1;
        }
        if ([key isEqualToString:@"owner_type"]) {
            id value = valueOrNil(modelDictionary, @"owner_type");
            if (value != nil) {
                self->_ownerType = value;
            }
            self->_listDirtyProperties.WDRListDirtyPropertyOwnerType = 1;
        }
        if ([key isEqualToString:@"id"]) {
            id value = valueOrNil(modelDictionary, @"id");
            if (value != nil) {
                self->_identifier = value;
            }
            self->_listDirtyProperties.WDRListDirtyPropertyIdentifier = 1;
        }
        if ([key isEqualToString:@"tasks"]) {
            id value = valueOrNil(modelDictionary, @"tasks");
            if (value != nil) {
                self->_tasks = value;
            }
            self->_listDirtyProperties.WDRListDirtyPropertyTasks = 1;
        }
        if ([key isEqualToString:@"owner_id"]) {
            id value = valueOrNil(modelDictionary, @"owner_id");
            if (value != nil) {
                self->_ownerId = value;
            }
            self->_listDirtyProperties.WDRListDirtyPropertyOwnerId = 1;
        }
        if ([key isEqualToString:@"title"]) {
            id value = valueOrNil(modelDictionary, @"title");
            if (value != nil) {
                self->_title = value;
            }
            self->_listDirtyProperties.WDRListDirtyPropertyTitle = 1;
        }
        if ([key isEqualToString:@"type"]) {
            id value = valueOrNil(modelDictionary, @"type");
            if (value != nil) {
                self->_type = value;
            }
            self->_listDirtyProperties.WDRListDirtyPropertyType = 1;
        }
        if ([key isEqualToString:@"public"]) {
            id value = valueOrNil(modelDictionary, @"public");
            if (value != nil) {
                self->_public = [value boolValue];
            }
            self->_listDirtyProperties.WDRListDirtyPropertyPublic = 1;
        }
    }];
    if ([self class] == [WDRList class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(PlankModelInitTypeDefault) }];
    }
    return self;
}
- (instancetype)initWithBuilder:(WDRListBuilder *)builder
{
    NSParameterAssert(builder);
    return [self initWithBuilder:builder initType:PlankModelInitTypeDefault];
}
- (instancetype)initWithBuilder:(WDRListBuilder *)builder initType:(PlankModelInitType)initType
{
    NSParameterAssert(builder);
    if (!(self = [super init])) {
        return self;
    }
    _revision = builder.revision;
    _listType = builder.listType;
    _ownerType = builder.ownerType;
    _identifier = builder.identifier;
    _tasks = builder.tasks;
    _ownerId = builder.ownerId;
    _title = builder.title;
    _type = builder.type;
    _public = builder.public;
    _listDirtyProperties = builder.listDirtyProperties;
    if ([self class] == [WDRList class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(initType) }];
    }
    return self;
}
- (NSString *)debugDescription
{
    NSArray<NSString *> *parentDebugDescription = [[super debugDescription] componentsSeparatedByString:@"\n"];
    NSMutableArray *descriptionFields = [NSMutableArray arrayWithCapacity:9];
    [descriptionFields addObject:parentDebugDescription];
    struct WDRListDirtyProperties props = _listDirtyProperties;
    if (props.WDRListDirtyPropertyRevision) {
        [descriptionFields addObject:[@"_revision = " stringByAppendingFormat:@"%@", @(_revision)]];
    }
    if (props.WDRListDirtyPropertyListType) {
        [descriptionFields addObject:[@"_listType = " stringByAppendingFormat:@"%@", _listType]];
    }
    if (props.WDRListDirtyPropertyOwnerType) {
        [descriptionFields addObject:[@"_ownerType = " stringByAppendingFormat:@"%@", _ownerType]];
    }
    if (props.WDRListDirtyPropertyIdentifier) {
        [descriptionFields addObject:[@"_identifier = " stringByAppendingFormat:@"%@", _identifier]];
    }
    if (props.WDRListDirtyPropertyTasks) {
        [descriptionFields addObject:[@"_tasks = " stringByAppendingFormat:@"%@", _tasks]];
    }
    if (props.WDRListDirtyPropertyOwnerId) {
        [descriptionFields addObject:[@"_ownerId = " stringByAppendingFormat:@"%@", _ownerId]];
    }
    if (props.WDRListDirtyPropertyTitle) {
        [descriptionFields addObject:[@"_title = " stringByAppendingFormat:@"%@", _title]];
    }
    if (props.WDRListDirtyPropertyType) {
        [descriptionFields addObject:[@"_type = " stringByAppendingFormat:@"%@", _type]];
    }
    if (props.WDRListDirtyPropertyPublic) {
        [descriptionFields addObject:[@"_public = " stringByAppendingFormat:@"%@", @(_public)]];
    }
    return [NSString stringWithFormat:@"WDRList = {\n%@\n}", debugDescriptionForFields(descriptionFields)];
}
- (instancetype)copyWithBlock:(PLANK_NOESCAPE void (^)(WDRListBuilder *builder))block
{
    NSParameterAssert(block);
    WDRListBuilder *builder = [[WDRListBuilder alloc] initWithModel:self];
    block(builder);
    return [builder build];
}
- (BOOL)isEqual:(id)anObject
{
    if (self == anObject) {
        return YES;
    }
    if ([anObject isKindOfClass:[WDRList class]] == NO) {
        return NO;
    }
    return [self isEqualToList:anObject];
}
- (BOOL)isEqualToList:(WDRList *)anObject
{
    return (
        (anObject != nil) &&
        (self == anObject) &&
        (_public == anObject.public) &&
        (_revision == anObject.revision) &&
        (_listType == anObject.listType || [_listType isEqualToString:anObject.listType]) &&
        (_ownerType == anObject.ownerType || [_ownerType isEqualToString:anObject.ownerType]) &&
        (_identifier == anObject.identifier || [_identifier isEqualToString:anObject.identifier]) &&
        (_tasks == anObject.tasks || [_tasks isEqual:anObject.tasks]) &&
        (_ownerId == anObject.ownerId || [_ownerId isEqualToString:anObject.ownerId]) &&
        (_title == anObject.title || [_title isEqualToString:anObject.title]) &&
        (_type == anObject.type || [_type isEqualToString:anObject.type])
    );
}
- (NSUInteger)hash
{
    NSUInteger subhashes[] = {
        17,
         [@(_revision) hash],
        [_listType hash],
        [_ownerType hash],
        [_identifier hash],
        [_tasks hash],
        [_ownerId hash],
        [_title hash],
        [_type hash],
        (_public ? 1231 : 1237)
    };
    return PINIntegerArrayHash(subhashes, sizeof(subhashes) / sizeof(subhashes[0]));
}
- (instancetype)mergeWithModel:(WDRList *)modelObject
{
    return [self mergeWithModel:modelObject initType:PlankModelInitTypeFromMerge];
}
- (instancetype)mergeWithModel:(WDRList *)modelObject initType:(PlankModelInitType)initType
{
    NSParameterAssert(modelObject);
    WDRListBuilder *builder = [[WDRListBuilder alloc] initWithModel:self];
    [builder mergeWithModel:modelObject];
    return [[WDRList alloc] initWithBuilder:builder initType:initType];
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
    _revision = [aDecoder decodeDoubleForKey:@"revision"];
    _listType = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"list_type"];
    _ownerType = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"owner_type"];
    _identifier = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"id"];
    _tasks = [aDecoder decodeObjectOfClass:[NSArray class] forKey:@"tasks"];
    _ownerId = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"owner_id"];
    _title = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"title"];
    _type = [aDecoder decodeObjectOfClass:[NSString class] forKey:@"type"];
    _public = [aDecoder decodeBoolForKey:@"public"];
    _listDirtyProperties.WDRListDirtyPropertyRevision = [aDecoder decodeIntForKey:@"revision_dirty_property"] & 0x1;
    _listDirtyProperties.WDRListDirtyPropertyListType = [aDecoder decodeIntForKey:@"list_type_dirty_property"] & 0x1;
    _listDirtyProperties.WDRListDirtyPropertyOwnerType = [aDecoder decodeIntForKey:@"owner_type_dirty_property"] & 0x1;
    _listDirtyProperties.WDRListDirtyPropertyIdentifier = [aDecoder decodeIntForKey:@"id_dirty_property"] & 0x1;
    _listDirtyProperties.WDRListDirtyPropertyTasks = [aDecoder decodeIntForKey:@"tasks_dirty_property"] & 0x1;
    _listDirtyProperties.WDRListDirtyPropertyOwnerId = [aDecoder decodeIntForKey:@"owner_id_dirty_property"] & 0x1;
    _listDirtyProperties.WDRListDirtyPropertyTitle = [aDecoder decodeIntForKey:@"title_dirty_property"] & 0x1;
    _listDirtyProperties.WDRListDirtyPropertyType = [aDecoder decodeIntForKey:@"type_dirty_property"] & 0x1;
    _listDirtyProperties.WDRListDirtyPropertyPublic = [aDecoder decodeIntForKey:@"public_dirty_property"] & 0x1;
    if ([self class] == [WDRList class]) {
        [[NSNotificationCenter defaultCenter] postNotificationName:kPlankDidInitializeNotification object:self userInfo:@{ kPlankInitTypeKey : @(PlankModelInitTypeDefault) }];
    }
    return self;
}
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeDouble:self.revision forKey:@"revision"];
    [aCoder encodeObject:self.listType forKey:@"list_type"];
    [aCoder encodeObject:self.ownerType forKey:@"owner_type"];
    [aCoder encodeObject:self.identifier forKey:@"id"];
    [aCoder encodeObject:self.tasks forKey:@"tasks"];
    [aCoder encodeObject:self.ownerId forKey:@"owner_id"];
    [aCoder encodeObject:self.title forKey:@"title"];
    [aCoder encodeObject:self.type forKey:@"type"];
    [aCoder encodeBool:self.public forKey:@"public"];
    [aCoder encodeInt:_listDirtyProperties.WDRListDirtyPropertyRevision forKey:@"revision_dirty_property"];
    [aCoder encodeInt:_listDirtyProperties.WDRListDirtyPropertyListType forKey:@"list_type_dirty_property"];
    [aCoder encodeInt:_listDirtyProperties.WDRListDirtyPropertyOwnerType forKey:@"owner_type_dirty_property"];
    [aCoder encodeInt:_listDirtyProperties.WDRListDirtyPropertyIdentifier forKey:@"id_dirty_property"];
    [aCoder encodeInt:_listDirtyProperties.WDRListDirtyPropertyTasks forKey:@"tasks_dirty_property"];
    [aCoder encodeInt:_listDirtyProperties.WDRListDirtyPropertyOwnerId forKey:@"owner_id_dirty_property"];
    [aCoder encodeInt:_listDirtyProperties.WDRListDirtyPropertyTitle forKey:@"title_dirty_property"];
    [aCoder encodeInt:_listDirtyProperties.WDRListDirtyPropertyType forKey:@"type_dirty_property"];
    [aCoder encodeInt:_listDirtyProperties.WDRListDirtyPropertyPublic forKey:@"public_dirty_property"];
}
@end

@implementation WDRListBuilder
- (instancetype)initWithModel:(WDRList *)modelObject
{
    NSParameterAssert(modelObject);
    if (!(self = [super init])) {
        return self;
    }
    struct WDRListDirtyProperties listDirtyProperties = modelObject.listDirtyProperties;
    if (listDirtyProperties.WDRListDirtyPropertyRevision) {
        _revision = modelObject.revision;
    }
    if (listDirtyProperties.WDRListDirtyPropertyListType) {
        _listType = modelObject.listType;
    }
    if (listDirtyProperties.WDRListDirtyPropertyOwnerType) {
        _ownerType = modelObject.ownerType;
    }
    if (listDirtyProperties.WDRListDirtyPropertyIdentifier) {
        _identifier = modelObject.identifier;
    }
    if (listDirtyProperties.WDRListDirtyPropertyTasks) {
        _tasks = modelObject.tasks;
    }
    if (listDirtyProperties.WDRListDirtyPropertyOwnerId) {
        _ownerId = modelObject.ownerId;
    }
    if (listDirtyProperties.WDRListDirtyPropertyTitle) {
        _title = modelObject.title;
    }
    if (listDirtyProperties.WDRListDirtyPropertyType) {
        _type = modelObject.type;
    }
    if (listDirtyProperties.WDRListDirtyPropertyPublic) {
        _public = modelObject.public;
    }
    _listDirtyProperties = listDirtyProperties;
    return self;
}
- (WDRList *)build
{
    return [[WDRList alloc] initWithBuilder:self];
}
- (void)mergeWithModel:(WDRList *)modelObject
{
    NSParameterAssert(modelObject);
    WDRListBuilder *builder = self;
    if (modelObject.listDirtyProperties.WDRListDirtyPropertyRevision) {
        builder.revision = modelObject.revision;
    }
    if (modelObject.listDirtyProperties.WDRListDirtyPropertyListType) {
        builder.listType = modelObject.listType;
    }
    if (modelObject.listDirtyProperties.WDRListDirtyPropertyOwnerType) {
        builder.ownerType = modelObject.ownerType;
    }
    if (modelObject.listDirtyProperties.WDRListDirtyPropertyIdentifier) {
        builder.identifier = modelObject.identifier;
    }
    if (modelObject.listDirtyProperties.WDRListDirtyPropertyTasks) {
        builder.tasks = modelObject.tasks;
    }
    if (modelObject.listDirtyProperties.WDRListDirtyPropertyOwnerId) {
        builder.ownerId = modelObject.ownerId;
    }
    if (modelObject.listDirtyProperties.WDRListDirtyPropertyTitle) {
        builder.title = modelObject.title;
    }
    if (modelObject.listDirtyProperties.WDRListDirtyPropertyType) {
        builder.type = modelObject.type;
    }
    if (modelObject.listDirtyProperties.WDRListDirtyPropertyPublic) {
        builder.public = modelObject.public;
    }
}
- (void)setRevision:(double)revision
{
    _revision = revision;
    _listDirtyProperties.WDRListDirtyPropertyRevision = 1;
}
- (void)setListType:(NSString *)listType
{
    _listType = listType;
    _listDirtyProperties.WDRListDirtyPropertyListType = 1;
}
- (void)setOwnerType:(NSString *)ownerType
{
    _ownerType = ownerType;
    _listDirtyProperties.WDRListDirtyPropertyOwnerType = 1;
}
- (void)setIdentifier:(NSString *)identifier
{
    _identifier = identifier;
    _listDirtyProperties.WDRListDirtyPropertyIdentifier = 1;
}
- (void)setTasks:(NSArray *)tasks
{
    _tasks = tasks;
    _listDirtyProperties.WDRListDirtyPropertyTasks = 1;
}
- (void)setOwnerId:(NSString *)ownerId
{
    _ownerId = ownerId;
    _listDirtyProperties.WDRListDirtyPropertyOwnerId = 1;
}
- (void)setTitle:(NSString *)title
{
    _title = title;
    _listDirtyProperties.WDRListDirtyPropertyTitle = 1;
}
- (void)setType:(NSString *)type
{
    _type = type;
    _listDirtyProperties.WDRListDirtyPropertyType = 1;
}
- (void)setPublic:(BOOL)public
{
    _public = public;
    _listDirtyProperties.WDRListDirtyPropertyPublic = 1;
}
@end
