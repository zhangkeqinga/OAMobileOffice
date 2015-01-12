//
//  MyPostMainViewController.m
//
//  Created by YTO on 13-7-17.
//  Copyright (c) 2013年 YTO—jhony. All rights reserved.
//  正则表达式

#import <Foundation/Foundation.h>

@interface ValidateUtil : NSObject
+ (BOOL)validateEmptyString:(NSString *)inputVal;
+ (BOOL)validateEqualString:(NSString *)oneVal equal:(NSString *) twoVal;

+ (BOOL)validateNameLengthString:(NSString *)inputVal;
+ (BOOL)validatePwdLengthString:(NSString *)inputVal;
+ (BOOL)validatePhoneLengthString:(NSString *)inputVal;
+ (BOOL)validateEmailLengthString:(NSString *)inputVal;
+ (BOOL)validateCustomNameLengthString:(NSString *)inputVal;

//+ (BOOL)validateLoginNameString:(NSString *)inputVal;
+ (BOOL)validateLoginNameLengthString:(NSString *)inputVal;
+ (BOOL)validateLoginPwdLengthString:(NSString *)inputVal;
+ (BOOL)validateEmail:(NSString *)email;
+ (BOOL)validateMobile:(NSString *)mobile;


@end
