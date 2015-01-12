//
//  CircleView.m
//  MDBClient
//
//  Created by jhony on 14-5-29.
//  Copyright (c) 2014年 YTO—jhon. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

         }
    return self;
}


- (void)initView{
    
    UIImageView *backImg=[[UIImageView alloc]init];
    backImg.frame=self.bounds;
    
    UIImage * backgroundImage = [UIImage imageNamed:@"currentPositionCircle.png"];
    backImg.image=backgroundImage;
    [self addSubview:backImg];
    
    UILabel * _newLabelNum;
    _newLabelNum=[[UILabel alloc]init];
    _newLabelNum.frame=self.bounds;
    _newLabelNum.textColor=RGB(255, 255, 255);
    _newLabelNum.font=[UIFont boldSystemFontOfSize:8];
    _newLabelNum.textAlignment=NSTextAlignmentCenter;
    _newLabelNum.text=@"19";
    _newLabelNum.backgroundColor=[UIColor clearColor];

    [self addSubview:_newLabelNum];
    
}


@end
