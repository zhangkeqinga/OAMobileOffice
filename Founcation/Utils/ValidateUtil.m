//
//  MyPostMainViewController.m
//
//  Created by YTO on 13-7-17.
//  Copyright (c) 2013年 YTO—jhony. All rights reserved.
//

#import "ValidateUtil.h"

@implementation ValidateUtil
+ (BOOL)validateEmptyString:(NSString *)inputVal {
    
    if (inputVal == nil) {
        return NO;
    }
    
    if ([inputVal isEqualToString:@""]) {
        return NO;
    }
    
    return YES;
}

+ (BOOL)validateNameLengthString:(NSString *)inputVal
{
    if ([inputVal length]> 50)
    {
        return NO;
    }
    return YES;
}

+ (BOOL)validateLoginPwdLengthString:(NSString *)inputVal
{
    if ([inputVal length]> 18 || [inputVal length] <6)
//    if([inputVal length] > 50)
    {
        return NO;
    }
    return YES;
}

+ (BOOL)validateLoginNameLengthString:(NSString *)inputVal
{
    if ([inputVal length] > 50 || [inputVal length] < 6)
//    NSLog(@"%d",[inputVal length]);
//    if([inputVal length] > 64)
    {
        return NO;
    }
    return YES;
}

//+ (BOOL)validateLoginNameString:(NSString *)inputVal
//{
//    NSString *nameRegex =  @"[A-Z0-9a-z_]+";
//    NSPredicate *nameTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", nameRegex];
//    return [nameTest evaluateWithObject:inputVal];
//}
+ (BOOL)validatePwdLengthString:(NSString *)inputVal
{
    if ([inputVal length] > 20)
    {
        return NO;
    }
    return YES;
}
+ (BOOL)validatePhoneLengthString:(NSString *)inputVal
{
    if ([inputVal length] == 11)
    {
        return YES;
    }
    return NO;
}
+ (BOOL)validateEmailLengthString:(NSString *)inputVal
{
    if ([inputVal length] > 50)
    {
        return NO;
    }
    return YES;
}



+ (BOOL)validateCustomNameLengthString:(NSString *)inputVal
{
    NSStringEncoding enc = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
    NSInteger le1 = [inputVal lengthOfBytesUsingEncoding:enc];
    
//    NSLog(@"length: %d", le1);
    if (le1 > 20)
    {
        return NO;
    }
    return YES;
}



+ (BOOL)validateEqualString:(NSString *)oneVal equal:(NSString *) twoVal {
    
    if (oneVal == nil || twoVal == nil) {
        return NO;
    }
    
    if ([oneVal isEqualToString:@""]
        || [twoVal isEqualToString:@""]) {
        return NO;
    }
    
    if ([oneVal isEqualToString:twoVal]) {
        return YES;
    }
    
    return NO;
}


+ (BOOL)validateEmail:(NSString *)email {
    NSString *emailRegex =  @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:email];
}

//// 10000000000
//+ (BOOL)validateMobile:(NSString *)mobile
//{
//    //    NSString *mobileRegex =  @"(^[1]([3] || [5] || [8])[0-9]{9}$)";
//    
//    NSString *mobileRegex = @"^((0\\d{2,3})-)(\\d{7,8})(-(\\d{3,}))?$|^1[3|4|5|8][0-9]\\d{8}$";
//    
//    NSPredicate *mobileTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileRegex];
//    return [mobileTest evaluateWithObject:mobile];
//}



+ (BOOL)validateMobile:(NSString *)mobile {
    BOOL result = NO;
    NSString *mobileRegex = @"((\\d{11})|^((\\d{7,8})|(\\d{4}|\\d{3})-(\\d{7,8})|(\\d{4}|\\d{3})-(\\d{7,8})-(\\d{4}|\\d{3}|\\d{2}|\\d{1})|(\\d{7,8})-(\\d{4}|\\d{3}|\\d{2}|\\d{1}))$)";
    
    NSPredicate *mobileTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileRegex];
    result = [mobileTest evaluateWithObject:mobile];
    if(!result){
        mobileRegex = @"^(400)\\d{7}$";
        mobileTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileRegex];
        result = [mobileTest evaluateWithObject:mobile];
    }
    return result;
}


@end
