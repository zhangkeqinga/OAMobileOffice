//
//  ExpensesViewController.m
//  OAMobileOffice
//
//  Created by Dong on 15-1-9.
//  Copyright (c) 2015年 jhony. All rights reserved.
//

#import "ExpensesViewController.h"

#import "ExpenseAddViewController.h"

@interface ExpensesViewController ()

@end

@implementation ExpensesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.titleNaviLabel.text=@"办公移动OA";

    
}



- (IBAction)buttonAction:(id)sender{
    switch ([sender tag]) {
        case 1000:
        {
            ExpenseAddViewController *addView=[[ExpenseAddViewController alloc]init];
            [self.navigationController pushViewController:addView animated:YES];
            

        }
            break;
            
        case 1001:
            
            break;
            
        case 1002:
            
            break;
            
        case 1003:
            
            break;
            
        default:
            break;
    }
    
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
