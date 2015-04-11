//
//  Card.h
//  Solitaire
//
//  Created by shay deacy on 08/04/2015.
//  Copyright (c) 2015 shay deacy. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Card : NSObject

@property (nonatomic, strong) NSString *suit;
@property (nonatomic) int face;
@property (nonatomic,assign) BOOL even;
@property (nonatomic, assign) BOOL red;

- (id)initWithSuit:(NSString*)suit andFace:(int)face;

@end