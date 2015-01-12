//
//  BasedView.m
//  Moffice
//
//  Created by Dong on 15-1-8.
//  Copyright (c) 2015年 jhony. All rights reserved.
//


#define height  59

#import "BasedTableView.h"

@implementation BasedTableView

@synthesize lineImg;
@synthesize makeImgView;
@synthesize numBImgView;
@synthesize mainTitle;
@synthesize mainSimple;
@synthesize mainInfoNum;
@synthesize dataLabel;
@synthesize pointX;
@synthesize lineImgs;

@synthesize circle;
@synthesize nesLabelNums;


- (void)awakeFromNib{
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

- (void)initXpoint{
    self.pointX=0;
}

- (void)initView{
    [self initXpoint];
    lineImgs =[[UIImageView alloc]init];
    lineImgs.frame=CGRectMake(0, 0, 320, height);
    lineImgs.backgroundColor=[UIColor whiteColor];
    [self addSubview:lineImgs];
    
    lineImg =[[UIImageView alloc]init];
    lineImg.frame=CGRectMake(pointX, (height-1), ScreenWidth, 1);
    lineImg.backgroundColor=RGB(218, 218, 218);
    
    makeImgView=[[UIImageView alloc]init];
    makeImgView.frame=CGRectMake(14+pointX, (height-44)/2, 43, 44);
    [makeImgView setImage:[UIImage imageNamed:@"1_01.png"]];
    
    mainTitle=[[UILabel alloc]init];
    mainTitle.text=@"圆通新闻";
    mainTitle.frame=CGRectMake(70+pointX, 0, 199, height);
    //    mainTitle.frame=CGRectMake(70+pointX, (height-44)/2+2, 199, 21);
    mainTitle.textColor=RGB(0, 0, 0);
    mainTitle.font=[UIFont systemFontOfSize:16];
    
    
    mainSimple=[[UILabel alloc]init];
    mainSimple.text=@"关注圆通新闻，了解圆通最新时讯";
    mainSimple.frame=CGRectMake(71+pointX, (height-44)/2+2+23, 199, 21);
    mainSimple.textColor=RGB(126, 127, 126);
    mainSimple.font=[UIFont systemFontOfSize:12];
    
    //数据
    dataLabel=[[UILabel alloc]init];
    dataLabel.text=@"0";
    dataLabel.frame=CGRectMake(71+pointX, (height-44)/2+2+23, 199-70, 21);
    dataLabel.textColor=RGB(126, 127, 126);
    dataLabel.font=[UIFont systemFontOfSize:1];
    
    
    mainTitle.backgroundColor=[UIColor clearColor];
    mainSimple.backgroundColor=[UIColor clearColor];
    dataLabel.backgroundColor=[UIColor clearColor];
    
    
    [self addSubview:makeImgView];
    [self addSubview:lineImg];
    
    [self addSubview:mainTitle];
    //    [self addSubview:dataLabel];
    //    [self addSubview:mainSimple];
    
}


- (void)initCellViewWithMakeImg:(NSString *)imagemake
                     numbackImg:(NSString *)numbackImg
                      maintitle:(NSString *)titlemain
                    simpletitle:(NSString *)titlesimple
                       infonumb:(NSString *)numinfo{
    
    [self initView];
    
    [makeImgView setImage:[UIImage imageNamed:imagemake]];
    
    if (![numinfo isEqualToString:@""]) {
        
        numBImgView=[[UIImageView alloc]init];
        numBImgView.frame=CGRectMake(282, (height-16)/2, 26, 16);
        [numBImgView setImage:[UIImage imageNamed:numbackImg]];
        [self addSubview:numBImgView];
        
        
        mainInfoNum=[[UILabel alloc]init];
        mainInfoNum.text=nil;
        mainInfoNum.frame=CGRectMake(282+pointX, (height-21)/2, 26, 21);
        mainInfoNum.textColor=[UIColor whiteColor];
        mainInfoNum.textAlignment=NSTextAlignmentCenter;
        mainInfoNum.font=[UIFont systemFontOfSize:12];
        mainInfoNum.text=numinfo;
        
        mainInfoNum.backgroundColor=[UIColor clearColor];
        
        [self addSubview:mainInfoNum];
        
    }
    
    mainTitle.text=titlemain;
    mainSimple.text=titlesimple;
    
    
}

- (void)showNewTypeNumber:(NSInteger)number{
    
    if (number!=0) {
        
        circle=[[CircleView alloc]initWithFrame:CGRectMake(44, 0, 20, 20)];
        
        UIImageView *backImg=[[UIImageView alloc]init];
        backImg.frame=circle.bounds;
        UIImage * backgroundImage = [UIImage imageNamed:@"currentPositionCircle.png"];
        backImg.image=backgroundImage;
        [circle addSubview:backImg];
        
        nesLabelNums=[[UILabel alloc]init];
        nesLabelNums.frame=circle.bounds;
        nesLabelNums.textColor=RGB (255, 255, 255);
        nesLabelNums.font=[UIFont boldSystemFontOfSize:8];
        nesLabelNums.textAlignment=NSTextAlignmentCenter;
        nesLabelNums.text=[NSString stringWithFormat:@"%ld",(long)number];
        nesLabelNums.backgroundColor=[UIColor clearColor];
        
        [circle addSubview:nesLabelNums];
        [self addSubview:circle];
    }
    
}


- (void)changeNewNumber:(NSInteger)numbers{
    
    if (numbers==0 && circle){
        [circle removeFromSuperview];
        circle=nil;
    }else if(numbers!=0 &&  circle){
        nesLabelNums.text=[NSString stringWithFormat:@"%ld",(long)numbers];
    }else if(numbers!=0 && !circle){
        [self showNewTypeNumber:numbers];
    }
    
}



@end
