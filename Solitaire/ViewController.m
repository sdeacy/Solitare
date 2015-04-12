//
//  ViewController.m
//  Solitaire
//
//  Created by shay deacy on 07/04/2015.
//  Copyright (c) 2015 shay deacy. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *deck;
@property (nonatomic, strong) NSMutableArray *hand;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    
    
    //draw the card back representing the deck
    CardView *stack = [[CardView alloc]initWithFrame:CGRectMake(20, 20, 50, 70)];
    [self.view addSubview:stack ];

    Deck *deck = [[Deck alloc]init];
    
    //upturned current card
    CardView *currentCardView = [[CardView alloc]initWithFrame:CGRectMake(75, 20, 50, 70)];
    //Card *card = [[Card alloc]initWithSuit:@"hearts" andFace:7];
    
    Card *card = [deck draw];
    currentCardView.card = card;
    [currentCardView loadFront];
    [self.view addSubview:currentCardView];
    
    //ace positions
    
    for(int x = 175 ; x <= 325; x = x+50){
        CardView *aceCardView = [[CardView alloc]initWithFrame:CGRectMake(x, 20, 50, 70)];
        [self.view addSubview:aceCardView];
    }
    
    //get width/height of view
    CGSize size = self.view.bounds.size;
    NSInteger width = size.width;
    NSInteger height = size.height;
    //NSLog(@"width: %ld,height: %ld",(long)width,(long)height);
   // NSLog(@"self.view.bounds: %@",NSStringFromCGRect(self.view.bounds));

    
    
    //divide screen into 7 columns
    
    CGFloat columnSize = 50;
    //NSLog(@"col size: %f",columnSize);
    
    NSArray * possibleXPositions = @[@325,@275,@225,@175,@125,@75,@25];
    for (NSString *item in possibleXPositions) {
      //  NSLog(@"%@", item);
    }
    int numberOfCardsToDeal = 7;
    while (numberOfCardsToDeal>0) {
        
        for (NSInteger x = width-50; x > 0; x = x - columnSize)
        {
            CGFloat pointX = x;
            CGFloat pointY = 100;
            for (int j = numberOfCardsToDeal ; j >= 0  ; j--)
            {
                pointY = pointY + 20;
                CardView *newView = [[CardView alloc] initWithFrame: CGRectMake(pointX, pointY, 50, 70)];
                Card *card = [deck draw];
                newView.card = card;
                [newView loadFront];
                [self.view addSubview:newView];
              
                //[self.view addSubview:newView];
            }
            numberOfCardsToDeal--;
        }
    }
}




@end