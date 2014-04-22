//
//  Deck.h
//  chard
//
//  Created by Paul on 4/22/14.
//  Copyright (c) 2014 Paul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;
- (void)initializeDeck;

@end
