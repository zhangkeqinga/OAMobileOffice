//
//  AlertUtil.h
//  YTongExpress
//
//  Created by wuxiaozhen on 12/20/12.
//  Copyright (c) 2012 wuxiaozhen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AlertUtil : NSObject

+(void) alertPromptInformation:(NSString *) info;
+(void) alertPromptInformationWithDelegate:(NSString *) info  delegate: (id) del;
+(void) alertLoginWithDelegate:(NSString *) info  delegate: (id) del;
+(void) alertSuerAndCancelWithDelegate:(NSString *) info  delegate: (id) del;
+ (void)alertViewAutoDissmiss:(UIAlertView *)alertView  withInfo:(NSString *)infoString  delegate: (id) del;

@end
