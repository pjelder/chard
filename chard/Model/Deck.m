//
//  Deck.m
//  chard
//
//  Created by Paul on 4/22/14.
//  Copyright (c) 2014 Paul. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards;  //of Card
@end

@implementation Deck

- (NSMutableArray *) cards
{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}

- (void)initializeDeck
{
    self.cards = nil;
    
    for (int i=0; i<8; i++) {
        [self addCard:[self createP]];
    }
    for (int i=0; i<2; i++) {
        [self addCard:[self createB]];
        [self addCard:[self createR]];
        [self addCard:[self createH]];
    }
    [self addCard:[self createQ]];
    [self addCard:[self createK]];
}

- (Card *) createP
{
    Card *card = [[Card alloc] init];
    card.value = 1;
    card.type = @"P";
    card.targets = nil;
    card.removed = NO;
    card.position = @"";
    return card;
}

- (Card *) createR
{
    Card *card = [[Card alloc] init];
    card.value = 5;
    card.type = @"R";
    card.targets = nil;
    card.removed = NO;
    card.position = @"";
    return card;
    
}

- (Card *) createH
{
    Card *card = [[Card alloc] init];
    card.value = 3;
    card.type = @"H";
    card.targets = nil;
    card.removed = NO;
    card.position = @"";
    return card;
}

- (Card *) createB
{
    Card *card = [[Card alloc] init];
    card.value = 3;
    card.type = @"B";
    card.targets = nil;
    card.removed = NO;
    card.position = @"";
    return card;
    
}

- (Card *) createQ
{
    Card *card = [[Card alloc] init];
    card.value = 10;
    card.type = @"Q";
    card.targets = nil;
    card.removed = NO;
    card.position = @"";
    return card;
}

- (Card *) createK
{
    Card *card = [[Card alloc] init];
    card.value = 2;
    card.type = @"K";
    card.targets = nil;
    card.removed = NO;
    card.position = @"";
    return card;
}
@end
