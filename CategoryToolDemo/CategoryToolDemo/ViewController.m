//
//  ViewController.m
//  CategoryToolDemo
//
//  Created by mac on 2017/11/24.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "ViewController.h"
#import <XZCategoryTool/XZCategoryTool.h>
#import <SDAutoLayout/SDAutoLayout.h>

@interface ViewController ()
@property (nonatomic, strong)UIButton *btnOne;
@property (nonatomic, strong)UILabel *textL;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.btnOne];
    [self.view addSubview:self.textL];
    
    [self autoLayout];
    
}

- (void)autoLayout{
    
    self.btnOne.sd_layout
    .centerXEqualToView(self.view)
    .centerYEqualToView(self.view)
    .heightIs(40).widthIs(60);
    
    self.textL.sd_layout
    .centerXEqualToView(self.view)
    .topSpaceToView(self.btnOne,30)
    .heightIs(20);
    [self.textL setSingleLineAutoResizeWithMaxWidth:150];
    
}

#pragma mark  - getter and setter

- (UIButton *)btnOne{
    if (_btnOne==nil) {
        _btnOne=[UIButton btnWithNormaLTitle:@"按钮1"
                            normalTitleColor:[UIColor blackColor]
                                   backImage:nil
                                   titleFont:16];
    }
    return _btnOne;
}

- (UILabel *)textL{
    if (_textL==nil) {
        _textL=[UILabel labelWithText:@"文本1"
                                 font:13
                                color:[UIColor yellowColor]];
    }
    return _textL;
}


@end
