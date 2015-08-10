//
//  NSObject_Extension.m
//  ConvertUIColor
//
//  Created by mont on 2015/08/11.
//  Copyright (c) 2015年 gmaesak. All rights reserved.
//


#import "NSObject_Extension.h"
#import "ConvertUIColor.h"

@implementation NSObject (Xcode_Plugin_Template_Extension)

+ (void)pluginDidLoad:(NSBundle *)plugin
{
    static dispatch_once_t onceToken;
    NSString *currentApplicationName = [[NSBundle mainBundle] infoDictionary][@"CFBundleName"];
    if ([currentApplicationName isEqual:@"Xcode"]) {
        dispatch_once(&onceToken, ^{
            sharedPlugin = [[ConvertUIColor alloc] initWithBundle:plugin];
        });
    }
}
@end
