//
//  SolDescription.m
//  AstronomyObjC
//
//  Created by Daniela Parra on 11/26/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import "SolDescription.h"

@implementation SolDescription

- (instancetype)initWithSol:(NSInteger)sol totalPhotos:(NSInteger)totalPhotos cameras:(NSArray<NSString *> *)cameras
{
    self = [super init];
    if (self) {
        _sol = sol;
        _totalPhotos = totalPhotos;
        _cameras = [cameras copy];
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSString *solString = dictionary[@"sol"];
    NSInteger sol = [solString integerValue];
    NSString *totalPhotosString = dictionary[@"total_photos"];
    NSInteger totalPhotos = [totalPhotosString integerValue];
    NSArray<NSString *> *cameras = dictionary[@"cameras"];
    
    return [self initWithSol:sol totalPhotos:totalPhotos cameras:cameras];
}

@end
