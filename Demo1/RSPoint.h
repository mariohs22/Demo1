//
//  RSPoint.h
//  Demo1
//
//  Created by Siarhei Burakouski on 3/1/20.
//  Copyright © 2020 Siarhei Burakouski. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RSPoint : NSObject
{
    int _x;
    int _y;
}
-(id)init;

-(void)setX:(int)x;
-(int)getX;

-(void)setY:(int)y;
-(int)getY;

-(void)print;

@end

NS_ASSUME_NONNULL_END
