//
//  RSPoint.m
//  Demo1
//
//  Created by Siarhei Burakouski on 3/1/20.
//  Copyright © 2020 Siarhei Burakouski. All rights reserved.
//

#import "RSPoint.h"

@implementation RSPoint
-(id)init {
    self = [super init];
    if (self) {
        _x = 17;
    }
    return self;
}

-(void)setX:(int)x {
    _x = x;
}
-(int)getX {
    return _x;
}

-(void)setY:(int)y {
    _y = y;
}
-(int)getY {
    return _y;
}

-(void)print {
    NSLog(@"X = %i and Y = %i", _x, _y);
}


@end
