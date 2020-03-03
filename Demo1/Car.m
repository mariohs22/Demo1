//
//  Car.m
//  Demo1
//
//  Created by Siarhei Burakouski on 3/1/20.
//  Copyright © 2020 Siarhei Burakouski. All rights reserved.
//

#import "Car.h"

static int count = 0;

@interface Car ()
{
//    double _distance;
}
- (void)startEngine;
- (void)stopEngine;
@property (nonatomic, assign) double distance;

@end



@implementation Car
- (id)initWithModel:(NSString *)model andPower:(double)power{
    self = [super init];
    if (self){
        _model = model;
        _power = power;
        count += 1;
    }
    return self;
}

- (NSString *)info{
    NSString *strInfo = [NSString stringWithFormat:@"Model: %@; power: %lf", self.model, self.power];
    return strInfo;
}

+ (void)printCount {
    NSLog(@"Cars count = %d", count);
}


- (void)ride:(double)distance {
    self.distance += distance;
}

- (void)toggleEngine:(BOOL)turnOn {
    turnOn ? [self startEngine] : [self stopEngine];
}

- (void)startEngine {
    NSLog(@"Engine is starting");
}

- (void)stopEngine {
    NSLog(@"Engine is stoping");
}



@end
