//
//  ExpenseViewController.h
//  Moffice
//
//  Created by Dong on 15-1-8.
//  Copyright (c) 2015年 jhony. All rights reserved.
//

#import "BasedViewController.h"

@interface ExpenseViewController : BasedViewController<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong) IBOutlet UITableView * tableView;
@property(nonatomic,strong)NSMutableArray * newsArray;

@end
