//
//  CardView.h
//  Solitaire
//
//  Created by shay deacy on 10/04/2015.
//  Copyright (c) 2015 shay deacy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Card.h"

@interface CardView : UIView

@property (nonatomic, strong) Card *card;
@property  CGPoint lastLocation;
@property  CGPoint currentPoint;
@property (nonatomic, strong) UIImageView *backImageView;
@property (nonatomic, strong) UIImageView *frontImageView;
@property (nonatomic,assign) bool moveable;
@property (nonatomic,assign)    bool lastCardInRow;
-(void)loadFront;

@end
