//
//  UserInfo.m
//  View
//
//  Created by YTO on 13-7-22.
//  Copyright (c) 2013年 YTO—jhony. All rights reserved.
//

#import "UserInfo.h"

@implementation UserInfo

+(NSString *)NumUserName
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    return [defaults objectForKey:@"NumUserName"];
}

+(NSString *)company
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSDictionary *dic = [defaults objectForKey:@"user_detail"];
    
    return [dic valueForKey:@"company"];
}
+(NSString *)dialyWork
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSDictionary *dic = [defaults objectForKey:@"user_detail"];
    
    return [dic valueForKey:@"dialyWork"];
}
+(NSString *)positionInfoName
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSDictionary *dic = [defaults objectForKey:@"user_detail"];
    
    return [dic valueForKey:@"positionInfoName"];
}

+(NSString *)userName
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSDictionary *dic = [defaults objectForKey:@"user_detail"];
    
    return [dic valueForKey:@"userName"];
}

+(NSString *)userCode
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSDictionary *dic = [defaults objectForKey:@"user_detail"];
    
    return [dic valueForKey:@"userCode"];
}

+(NSString *)orgCode
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSDictionary *dic = [defaults objectForKey:@"user_detail"];
    
    return [dic valueForKey:@"orgcode"];
}

+(NSString *)level{
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSDictionary *dic = [defaults objectForKey:@"user_detail"];
    
    return [dic valueForKey:@"level"];
    
}
+(NSString *)authority{
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSDictionary *dic = [defaults objectForKey:@"user_detail"];
    
    return [dic valueForKey:@"authority"];
    
}




+(NSString *)notinumber{
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSDictionary *dic = [defaults objectForKey:@"user_detail"];
    
    return [dic valueForKey:@"notinumber"];

    
}

+(NSString *)positionInfoCode//新增 岗位编码
{
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSDictionary *dic = [defaults objectForKey:@"user_detail"];
    
    return [dic valueForKey:@"positionInfoCode"];
    
    
}

+(NSString *)positionDescription
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSDictionary *dic = [defaults objectForKey:@"user_detail"];
    
    return [dic valueForKey:@"positionDescription"];
}


// ----------------------------
+(BOOL)isLoginSystem
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSNumber *logNumber = [defaults objectForKey:@"user_isLogin"];
    
    return [logNumber boolValue];
}
+(NSDictionary *)loginUserDetail
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSDictionary *dic = [defaults objectForKey:@"user_detail"];
    
    return dic;
}

+(NSArray *)loginUserData
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSArray *arr = [defaults objectForKey:@"userdata"];
    
    return arr;
}

+(BOOL)loginSystem:(NSDictionary *)dic
{
    NSUserDefaults*defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:[NSNumber numberWithBool:YES]  forKey:@"user_isLogin"];
   
    [defaults setObject:dic  forKey:@"user_detail"];
    
    return YES;
}

+(BOOL)logoutSystem
{
    NSUserDefaults*defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:[NSNumber numberWithBool:NO]  forKey:@"user_isLogin"];
    [defaults setObject:nil  forKey:@"user_detail"];
    [defaults setObject:nil  forKey:@"userdata"];
    [defaults synchronize];
    
    return YES;
}


@end
