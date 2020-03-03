//
//  main.m
//  Demo1
//
//  Created by Siarhei Burakouski on 3/1/20.
//  Copyright © 2020 Siarhei Burakouski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RSPoint.h"
#import "Car.h"
#import "Car+SoundSystem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
/*
        int a = 5;
        int *b = &a;
        NSLog(@"a = %d, address a = %p", a, &a);
        NSLog(@"b = %d, address b = %p", *b, b);
        a = 15;
        NSLog(@"a = %d, address a = %p", a, &a);
        NSLog(@"b = %d, address b = %p", *b, b);
        
        RSPoint *point = [RSPoint new];
        //[point print];
        [point setX:15];
        [point setY:10];

        //[point print];
*/
        Car *car1 = [[Car alloc] initWithModel:@"BMW" andPower:333];
        NSString *car1Info = [car1 info];
        NSLog(@"Car %@", car1Info);
 
        if ([Car conformsToProtocol:@protocol(Vehicle)]){
            [car1 ride:100];
            if ([car1 respondsToSelector:@selector(toggleEngine:)]) {
                [car1 toggleEngine:YES];
                [car1 toggleEngine:NO];
                [car1 setPower:300];
            }
        }
        [car1 playAudio];
        
//        Car *car2 = [[Car alloc] initWithModel:@"Audi" andPower:553];
//        NSString *car2Info = [car2 info];
//        NSLog(@"Car %@", car2Info);
//        [Car printCount];

    }
    return 0;
}
