//
//  Deck.h
//  Solitaire
//
//  Created by shay deacy on 08/04/2015.
//  Copyright (c) 2015 shay deacy. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Card;

@interface Deck : NSObject

@property (nonatomic, strong) NSMutableArray *deck;
- (Card *)draw;

@end