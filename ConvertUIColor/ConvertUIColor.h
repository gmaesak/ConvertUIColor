//
//  ConvertUIColor.h
//  ConvertUIColor
//
//  Created by mont on 2015/08/11.
//  Copyright (c) 2015年 gmaesak. All rights reserved.
//

#import <AppKit/AppKit.h>

@class ConvertUIColor;

static ConvertUIColor *sharedPlugin;

@interface ConvertUIColor : NSObject

+ (instancetype)sharedPlugin;
- (id)initWithBundle:(NSBundle *)plugin;

@property (nonatomic, strong, readonly) NSBundle* bundle;
@end