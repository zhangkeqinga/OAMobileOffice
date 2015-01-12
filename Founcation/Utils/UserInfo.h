//
//  UserInfo.h
//  View
//
//  Created by YTO on 13-7-22.
//  Copyright (c) 2013年 YTO—jhony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInfo : NSObject

+(BOOL)isLoginSystem;
+(NSDictionary *)loginUserDetail;
+(BOOL)loginSystem:(NSDictionary *)dic;
+(BOOL)logoutSystem;

+(NSString *)userName;
+(NSString *)positionDescription;
+(NSString *)company;
+(NSString *)dialyWork;
+(NSString *)positionInfoName;
+(NSString *)userCode;
+(NSString *)orgCode;
+(NSString *)level;
+(NSString *)authority;

+(NSString *)notinumber;
+(NSString *)positionInfoCode; //新增 岗位编码

+(NSArray *)loginUserData;
+(NSString *)NumUserName;



@end


//    IdentifyingCode = "";
//    IsIdentifying = 0;
//    authority = Y;
//    birthdate = "08-02";
//    company = "";
//    dialyWork = "";
//    level = BRANCH;
//    orgcode = 210075;
//    positionDescription = "";
//    positionInfoCode = "KA001 ";
//    positionInfoName = "\U5206\U516c\U53f8\U7ecf\U7406 ";
//    userCode = 00016144;
//    userName = "\U5d14\U4ece\U6d2a";




