//
//  MarsPhoto.m
//  AstronomyObjC
//
//  Created by Daniela Parra on 11/26/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import "MarsPhoto.h"

@implementation MarsPhoto

- (instancetype)initWithIdentifier:(NSInteger)identifier sol:(NSInteger)sol camera:(Camera *)camera earthDate:(NSString *)earthDate imageURL:(NSURL *)imageURL
{
    self = [super init];
    if (self) {
        _identifier = identifier;
        _sol = sol;
        _camera = [camera copy];
        _earthDate = [earthDate copy];
        _imageURL = [imageURL copy];
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSString *identifierString = dictionary[@"id"];
    NSInteger identifier = [identifierString integerValue];
    NSString *solString = dictionary[@"sol"];
    NSInteger sol = [solString integerValue];
    Camera *camera = dictionary[@"camera"];
    NSString *earthDateString = dictionary[@"earth_date"];
    
    NSString *imageURLString = dictionary[@"img_src"];
    NSURL *imageURL = [[NSURL alloc] initWithString:imageURLString];
    return [self initWithIdentifier:identifier sol:sol camera:camera earthDate:earthDateString imageURL:imageURL];
}

@end
