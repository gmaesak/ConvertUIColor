//
//  ConvertColorWindowController.m
//  ConvertUIColor
//
//  Created by mont on 2015/08/11.
//  Copyright (c) 2015年 gmaesak. All rights reserved.
//

#import "ConvertColorWindowController.h"

@interface ConvertColorWindowController ()

@end

@implementation ConvertColorWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction)convert:(id)sender {
    // 入力された文字列を取得
    NSString* hexString = self.hexTextField.stringValue;
    // 文字列を変換
    NSString* uiColorString = [self stringUIColorFromColorCode:hexString];
    // 出力用のTextFieldに出力
    self.uicolorTextField.stringValue = uiColorString;
}

- (IBAction)clear:(id)sender {
    // TextFieldの値をリセット
    self.hexTextField.stringValue = @"";
    self.uicolorTextField.stringValue = @"";
}

/**
 *  16進数の文字列をUIColorに変換
 *
 *  @param colorCode 16進数のカラーコード
 *
 *  @return UIColorの文字列
 */
- (NSString*)stringUIColorFromColorCode:(NSString*)colorCode
{
    // 「#」を取り除く
    NSString* hexString = [colorCode stringByReplacingOccurrencesOfString:@"#" withString:@""];
    // 長さが6未満の場合は空文字を返す
    if (hexString.length < 6) {
        return @"";
    }
    
    // 16進数をintに変換
    unsigned int color[3];
    for (int i = 0; i < 3; i++) {
        NSString *param = [hexString substringWithRange:NSMakeRange(i * 2, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:param];
        [scanner scanHexInt:&color[i]];
    }
    
    // UIColorの文字列に変換
    NSString* uiColorString = [NSString stringWithFormat:@"[UIColor colorWithRed:%f green:%f blue:%f alpha:1.0f]; // #%@",
                               color[0] / 255.0f,
                               color[1] / 255.0f,
                               color[2] / 255.0f,
                               hexString];
    return uiColorString;
}

@end
