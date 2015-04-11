//
//  Card.m
//  Solitaire
//
//  Created by shay deacy on 08/04/2015.
//  Copyright (c) 2015 shay deacy. All rights reserved.
//

#import "Card.h"

@implementation Card


- (id)initWithSuit:(NSString *)suit andFace:(int )face{
    self = [super init];
    if(!self) { return nil; }
    
    _suit = suit;
    _face = face;
    if ([_suit isEqualToString:@"h"] ||  [_suit isEqualToString:@"d"]) {
        _red = true;
    }
    else{
        _red = false;
    }
    
    
    return self;
}



-(NSString*)description {
    return [NSString stringWithFormat:@"%@ %i",_suit,_face];
}

@end