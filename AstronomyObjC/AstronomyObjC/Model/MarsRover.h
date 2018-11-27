//
//  MarsRover.h
//  AstronomyObjC
//
//  Created by Daniela Parra on 11/26/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SolDescription;

NS_ASSUME_NONNULL_BEGIN

@interface MarsRover : NSObject

-(instancetype)initWithName:(NSString *)name
                 launchDate:(NSString *)launchDate
                landingDate:(NSString *)landingDate
                     status:(NSString *)status
                     maxSol:(NSInteger)maxSol
                    maxDate:(NSString *)maxDate
                totalPhotos:(NSInteger)totalPhotos
            solDescriptions:(NSArray<SolDescription *> *)solDescriptions;

-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

//typedef NS_ENUM(NSInteger, StatusType) {
//    active,
//    complete
//};

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly, copy) NSString *launchDate;
@property (nonatomic, readonly, copy) NSString *landingDate;
@property (nonatomic, readonly, copy) NSString *status;
@property (nonatomic, readonly) NSInteger maxSol;
@property (nonatomic, readonly, copy) NSString *maxDate;
@property (nonatomic, readonly) NSInteger totalPhotos;
@property (nonatomic, readonly, copy) NSArray<SolDescription *> *solDescriptions;

@end

NS_ASSUME_NONNULL_END
