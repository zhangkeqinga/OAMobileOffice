//
//  ExpenseAddViewController.m
//  Moffice
//
//  Created by Dong on 15-1-8.
//  Copyright (c) 2015年 jhony. All rights reserved.
//

#import "ExpenseAddViewController.h"

@interface ExpenseAddViewController ()

@end

@implementation ExpenseAddViewController

@synthesize s_scrollView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        self.titleNaviLabel.text=@"申请报销";

//        UIBarButtonItem *addBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd  target:self action:@selector(selectRightAction:)];
//        addBtn.style=UIBarButtonSystemItemAdd;
//        self.navigationItem.rightBarButtonItem = addBtn;
        
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self initScrollview];
    
}

- (void)viewWillAppear:(BOOL)animated{
    
}

- (void)initScrollview{
    //控制可以滚动的区域
    s_scrollView.contentSize = CGSizeMake(320, 900);
    //当前显示区域顶点相对于frame顶点的偏移量
//    s_scrollView.contentOffset = CGPointMake(0, 0);
//    //scrollview的contentview的顶点相对于scrollview的位置
//    s_scrollView.contentInset = UIEdgeInsetsMake(0 , 0, 0, 0);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
