//
//  BasedViewController.m
//  Moffice
//
//  Created by Dong on 15-1-8.
//  Copyright (c) 2015年 jhony. All rights reserved.
//

#import "BasedViewController.h"

@interface BasedViewController ()

@end

@implementation BasedViewController
@synthesize titleNaviLabel;
@synthesize naviBackItem;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        [self initNavigationTitle];
    }

    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden=NO;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)initNavigationTitle{
    
    naviBackItem= [[UIBarButtonItem alloc] init];
    naviBackItem.title = @"返回";
    self.navigationItem.backBarButtonItem = naviBackItem;

    //自定义标题
    titleNaviLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0 , 100, 44)];
    titleNaviLabel.backgroundColor = [UIColor clearColor];  //设置Label背景透明
    titleNaviLabel.font = [UIFont boldSystemFontOfSize:20];  //设置文本字体与大小
    titleNaviLabel.textColor = RGB(0, 0, 0);  //设置文本颜色
    titleNaviLabel.textAlignment = NSTextAlignmentCenter;
    titleNaviLabel.text = @"MobileOffice";  //设置标题
    self.navigationItem.titleView = titleNaviLabel;
    
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
