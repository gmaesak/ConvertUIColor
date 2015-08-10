//
//  ConvertColorWindowController.h
//  ConvertUIColor
//
//  Created by mont on 2015/08/11.
//  Copyright (c) 2015年 gmaesak. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ConvertColorWindowController : NSWindowController

// 16進数入力用TextField
@property (weak) IBOutlet NSTextField *hexTextField;
// 変換結果出力用TextField
@property (weak) IBOutlet NSTextField *uicolorTextField;

// Convertボタン押下時
- (IBAction)convert:(id)sender;
// Clearボタン押下時
- (IBAction)clear:(id)sender;
@end
