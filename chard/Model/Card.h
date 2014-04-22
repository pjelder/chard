//
//  Card.h
//  chard
//
//  Created by Paul on 4/22/14.
//  Copyright (c) 2014 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *type;  //P, R, H, B, Q, K
@property (nonatomic) NSUInteger value;
@property (nonatomic, getter = isRemoved) BOOL removed;
@property (strong, nonatomic) NSString *position;  //0 = L, 1 = C, 2 = R
@property (strong, nonatomic) NSArray *targets;  //of NSStrings of L,C,or R



@end
