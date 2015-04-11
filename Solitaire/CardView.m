//
//  CardView.m
//  Solitaire
//
//  Created by shay deacy on 10/04/2015.
//  Copyright (c) 2015 shay deacy. All rights reserved.
//

#import "CardView.h"
#import "Card.h"


@implementation CardView

-(NSString*)description {
    return [NSString stringWithFormat:@"currentCard%@",_card];
}

- (id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
    {
        [self loadBack];
    }
    return self;
}

- (void)loadBack
{
    if (_backImageView == nil)
    {
       _backImageView = [[UIImageView alloc] initWithFrame:self.bounds];
        _backImageView.image = [UIImage imageNamed:@"cardBack"];
        [self addSubview:_backImageView];
    }
}



- (void)loadFront
{
    
    
        _frontImageView = [[UIImageView alloc] initWithFrame:self.bounds];
        [self addSubview:_frontImageView];
        
        NSLog(@"self card: %@",[self card]);
        //TODO select front image here
    
     
        
        NSString *suit = @"clubs";
        NSString *value = @"2";
        NSString *filename = [NSString stringWithFormat:@"%@_of_%@", value, suit];
        _frontImageView.image = [UIImage imageNamed:filename];
        [self addSubview:_frontImageView];
        NSLog(@"self.card loadFront %@",self.card);

}


-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    _currentPoint = [[touches anyObject] locationInView:self];
    
    [self.superview bringSubviewToFront:self];
    _lastLocation = [self center];
    //[self loadFront];
}

- (void) touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event
{
    
    CGPoint touchedPoint = [[touches anyObject] locationInView:self];
    //NSLog(@"touchedPoint: %@",NSStringFromCGPoint(touchedPoint));

    
    CGPoint newPoint = CGPointMake(self.center.x + (touchedPoint.x - _currentPoint.x),
                                   self.center.y + (touchedPoint.y - _currentPoint.y));
    
    
    self.center = newPoint;
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{

    CGPoint newPoint = self.center;
    NSArray * possibleXPositions = @[@325,@275,@225,@175,@125,@75,@25];
    
    if (newPoint.x < 75) {
        newPoint.x = 50;
    } else if(newPoint.x >= 75 && newPoint.x < 125){
        newPoint.x = 100;
    }
    else if(newPoint.x >= 125 && newPoint.x < 175){
        newPoint.x = 150;
    }
    else if(newPoint.x >= 175 && newPoint.x < 225){
        newPoint.x = 200;
    }
    else if(newPoint.x >= 225 && newPoint.x < 275){
        newPoint.x = 250;
    }
    else if(newPoint.x >= 275 && newPoint.x < 325){
        newPoint.x = 300;
    }
    else if(newPoint.x >= 325){
        newPoint.x = 350;
    }
    else{
        newPoint.x =  newPoint.x;
    }
    self.center = newPoint;
}






@end