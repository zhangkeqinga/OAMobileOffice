//
//  ViewController.h
//  Moffice
//
//  Created by Dong on 15-1-8.
//  Copyright (c) 2015年 jhony. All rights reserved.
//  主页面

#import "BasedViewController.h"

@interface MainViewController : BasedViewController<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong) IBOutlet UITableView * tableView;
@property(nonatomic,strong) NSMutableArray * newsArray;

@end

