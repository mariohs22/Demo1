//
//  Car.h
//  Demo1
//
//  Created by Siarhei Burakouski on 3/1/20.
//  Copyright © 2020 Siarhei Burakouski. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@protocol Vehicle <NSObject>
- (void)ride: (double)distance;

@optional
- (void)toggleEngine: (BOOL)turnOn;

@end


@interface Car : NSObject <Vehicle>

@property (nonatomic, assign) double power;
@property (nonatomic, copy) NSString *model;
@property (nonatomic, assign, readonly) double distance;

-(id)initWithModel:(NSString *)model andPower:(double)power;
-(NSString *) info;
+(void)printCount;

@end

NS_ASSUME_NONNULL_END
