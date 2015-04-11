//
//  Deck.m
//  Solitaire
//
//  Created by shay deacy on 08/04/2015.
//  Copyright (c) 2015 shay deacy. All rights reserved.
//

#import "Deck.h"
#import "Card.h"

@implementation Deck
{
    NSMutableArray *_cards;
}

- (void)buildDeck
{
    //NSArray *values = @[@1,@2,@3,@4,@5];
    NSArray *suits = @[@"d",@"c",@"h",@"s"];
    NSString *currentSuit;
    
    for (currentSuit in suits) {
        for (int i = 1; i<=13; i++) {
            Card *card = [[Card alloc]initWithSuit:currentSuit andFace:i];
            NSLog(@"%@",card);
            [_deck addObject:card];
        }
    }
    
}

- (id)init
{
    if ((self = [super init]))
    {
        _cards = [NSMutableArray arrayWithCapacity:52];
        [self buildDeck];
    }
    return self;
}


- (Card *)draw
{

    NSInteger index = arc4random() % _deck.count;
    Card *card = [_deck objectAtIndex:index];
    [_deck removeObject:card];
    return card;
}



@end