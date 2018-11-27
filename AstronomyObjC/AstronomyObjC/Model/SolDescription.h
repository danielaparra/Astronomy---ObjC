//
//  SolDescription.h
//  AstronomyObjC
//
//  Created by Daniela Parra on 11/26/18.
//  Copyright © 2018 Daniela Parra. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SolDescription : NSObject

- (instancetype)initWithSol:(NSInteger)sol totalPhotos:(NSInteger)totalPhotos cameras:(NSArray<NSString *> *)cameras;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@property (nonatomic, readonly) NSInteger sol;
@property (nonatomic, readonly) NSInteger totalPhotos;
@property (nonatomic, readonly, copy) NSArray<NSString *> *cameras;

@end

NS_ASSUME_NONNULL_END
