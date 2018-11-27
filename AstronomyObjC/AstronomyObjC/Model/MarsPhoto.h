//
//  MarsPhoto.h
//  AstronomyObjC
//
//  Created by Daniela Parra on 11/26/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AstronomyObjC-Swift.h"

NS_ASSUME_NONNULL_BEGIN

@interface MarsPhoto : NSObject

- (instancetype)initWithIdentifier:(NSInteger)identifier sol:(NSInteger)sol camera:(Camera *)camera earthDate:(NSString *)earthDate imageURL:(NSURL *)imageURL;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@property (nonatomic, readonly) NSInteger identifier;
@property (nonatomic, readonly) NSInteger sol;
@property (nonatomic, readonly, copy) Camera *camera;
@property (nonatomic, readonly, copy) NSString *earthDate;
@property (nonatomic, readonly, copy) NSURL *imageURL;


@end

NS_ASSUME_NONNULL_END
