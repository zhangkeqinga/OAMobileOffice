//
//  BasedView.h
//  Moffice
//
//  Created by Dong on 15-1-8.
//  Copyright (c) 2015年 jhony. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BasedTableView : UITableViewCell


@property(nonatomic,assign)int pointX;

@property(nonatomic,strong)UIImageView *lineImg;
@property(nonatomic,strong)UIImageView *makeImgView;
@property(nonatomic,strong)UIImageView *numBImgView;

@property(nonatomic,strong)UILabel     *mainTitle;
@property(nonatomic,strong)UILabel     *mainSimple;
@property(nonatomic,strong)UILabel     *mainInfoNum;
@property(nonatomic,retain)UILabel     *dataLabel;

@property(nonatomic,retain)UIImageView * lineImgs;
@property(nonatomic,strong)CircleView  *circle;
@property(nonatomic,strong)UILabel     *nesLabelNums;


- (void)initXpoint;
- (void)initView;
- (void)initCellViewWithMakeImg:(NSString *)imagemake
                     numbackImg:(NSString *)numbackImg
                      maintitle:(NSString *)titlemain
                    simpletitle:(NSString *)titlesimple
                       infonumb:(NSString *)numinfo;

- (void)showNewTypeNumber:(NSInteger)number;


@end
