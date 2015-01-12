//
//  ViewController.m
//  Moffice
//
//  Created by Dong on 15-1-8.
//  Copyright (c) 2015年 jhony. All rights reserved.
//

#import "MainViewController.h"
#import "BasedTableView.h"

#import "ExpenseViewController.h"
#import "ExpensesViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

@synthesize tableView=_tableView;
@synthesize newsArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

                
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
        backItem.title = @"返回";
        self.navigationItem.backBarButtonItem = backItem;

       

    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
 
    [self initArray];
    [self initTabViewHistory];
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}

- (void)initArray{
    
    newsArray=[[NSMutableArray alloc]initWithCapacity:0];
    
    NSString *string1=@"news.png~报销~关注圆通新闻，了解圆通发展~";
    NSString *string2=@"operate.png~流程审批~关注圆通运营状态，了解圆通发展走势~";
    NSString *string3=@"position.png~任务协作~安全生产，重于泰山~";
    NSString *string4=@"compass.png~请假~行业资讯，时时把握行业动态~";
    NSString *string5=@"position.png~悬赏招聘~领先是一种态度,是一种习惯,是成功的方向标~";
    
    [newsArray addObject:string1];
    [newsArray addObject:string2];
    [newsArray addObject:string3];
    [newsArray addObject:string4];
    [newsArray addObject:string5];
    
    
    NSString *string11=@"news.png~企业小助手~关注圆通新闻，了解圆通发展~";
    NSString *string12=@"operate.png~通讯录~关注圆通运营状态，了解圆通发展走势~";
    NSString *string13=@"position.png~企业邮箱~安全生产，重于泰山~";
    NSString *string14=@"compass.png~投票~行业资讯，时时把握行业动态~";
    NSString *string15=@"position.png~考勤~领先是一种态度,是一种习惯,是成功的方向标~";
    
    [newsArray addObject:string11];
    [newsArray addObject:string12];
    [newsArray addObject:string13];
    [newsArray addObject:string14];
    [newsArray addObject:string15];
    
    NSString *string21=@"news.png~日程管理~关注圆通新闻，了解圆通发展~";
    NSString *string22=@"operate.png~微名片~关注圆通运营状态，了解圆通发展走势~";
    NSString *string23=@"position.png~考勤~安全生产，重于泰山~";
    NSString *string24=@"compass.png~请假~行业资讯，时时把握行业动态~";
    NSString *string25=@"position.png~悬赏招聘~领先是一种态度,是一种习惯,是成功的方向标~";
    
    [newsArray addObject:string21];
    [newsArray addObject:string22];
    [newsArray addObject:string23];
    [newsArray addObject:string24];
    [newsArray addObject:string25];
    
    
}

- (void)initTabViewHistory{
    
    _tableView.backgroundColor= RGB(234, 234, 234);
    [_tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    //    _tableView.delegate = self;
    //    _tableView.dataSource = self;
    //    [self.view addSubview:_tableView];
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 59;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [newsArray count];
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* CELL = @"cell";
    BasedTableView* cell = [tableView dequeueReusableCellWithIdentifier:CELL];
    if (cell == nil) {
        cell = [[BasedTableView alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CELL];
        
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleGray ;// 不高亮显示选中的单元格
    NSArray *arraynew=[[newsArray objectAtIndex:indexPath.row]  componentsSeparatedByString:@"~"];
    
    [cell initCellViewWithMakeImg:[arraynew objectAtIndex:0]
                       numbackImg:@"1_99.png"
                        maintitle:[arraynew objectAtIndex:1]
                      simpletitle:[arraynew objectAtIndex:2]
                         infonumb:[arraynew objectAtIndex:3]];
    
    //[cell showNewTypeNumber:indexPath.row];  //显示新闻的条数
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];
    
    ExpensesViewController *expence=[[ExpensesViewController alloc]init];
    [self.navigationController pushViewController:expence animated:YES];
    
}



@end
