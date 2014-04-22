//
//  GLogic.m
//  chard
//
//  Created by Paul on 4/22/14.
//  Copyright (c) 2014 Paul. All rights reserved.
//

#import "GLogic.h"
#import "Deck.h"
#import "Card.h"

@interface GLogic()
@property (strong, nonatomic) Deck *p1Deck;
@property (strong, nonatomic) Deck *p2Deck;
@property (strong, nonatomic) NSMutableArray *p1Field;
@property (strong, nonatomic) NSMutableArray *p2Field;
@property (strong, nonatomic) NSMutableArray *p1Hand;
@property (strong, nonatomic) NSMutableArray *p2Hand;
@end

@implementation GLogic

- (void) setup
{
    self.p1Deck = [[Deck alloc] init];
    self.p2Deck = [[Deck alloc] init];
    [self.p1Deck initializeDeck];
    [self.p2Deck initializeDeck];
}




@end
