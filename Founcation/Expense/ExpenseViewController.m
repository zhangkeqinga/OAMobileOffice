//
//  ExpenseViewController.m
//  Moffice
//
//  Created by Dong on 15-1-8.
//  Copyright (c) 2015年 jhony. All rights reserved.
//

#import "ExpenseViewController.h"

#import "ExpenseTableViewCell.h"
#import "ExpenseAddViewController.h"


@interface ExpenseViewController ()

@end

@implementation ExpenseViewController
@synthesize tableView=_tableView;
@synthesize newsArray;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
        backItem.title = @"返回";
        self.navigationItem.backBarButtonItem = backItem;

        
        self.navigationItem.title=@"报销";
        
//        UIBarButtonItem *addBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd  target:self action:@selector(selectRightAction:)];
//        addBtn.style=UIBarButtonSystemItemAdd;
//        self.navigationItem.rightBarButtonItem = addBtn;
        
    }
    return self;
}

-(void)selectRightAction:(id)sender
{
    
    ExpenseAddViewController *addView=[[ExpenseAddViewController alloc]init];
    [self.navigationController pushViewController:addView animated:YES];
    
    
//    UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"提示" message:@"你确定要添加新的报销流程吗" delegate:self  cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//    [alter show];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    [self initArray];
    [self initTabViewHistory];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (void)initArray{
    
    newsArray=[[NSMutableArray alloc]initWithCapacity:0];
    
    NSString *string1=@"news.png~我的报销~关注圆通新闻，了解圆通发展~";
    NSString *string2=@"operate.png~待审批~关注圆通运营状态，了解圆通发展走势~";
    NSString *string3=@"position.png~申请报销~安全生产，重于泰山~";
    
    [newsArray addObject:string1];
    [newsArray addObject:string2];
    [newsArray addObject:string3];
    
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
    ExpenseTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:CELL];
    if (cell == nil) {
        cell = [[ExpenseTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CELL];
    
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleGray ;// 不高亮显示选中的单元格
    NSArray *arraynew=[[newsArray objectAtIndex:indexPath.row]  componentsSeparatedByString:@"~"];
    
    [cell initCellViewWithMakeImg:[arraynew objectAtIndex:0]
                       numbackImg:@"1_99.png"
                        maintitle:[arraynew objectAtIndex:1]
                      simpletitle:[arraynew objectAtIndex:2]
                         infonumb:[arraynew objectAtIndex:3]];
    
//   [cell showNewTypeNumber:indexPath.row];  //显示新闻的条数
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];
    
    if(indexPath.row==2){
        
        ExpenseAddViewController *addView=[[ExpenseAddViewController alloc]init];
        [self.navigationController pushViewController:addView animated:YES];
    }
    
    
}


@end
