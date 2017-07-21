//
//  messageDetailHeaderView.m
//  MUST_Plus
//
//  Created by zbc on 16/10/26.
//  Copyright © 2016年 zbc. All rights reserved.
//

#import "messageDetailHeaderView.h"
#import "BasicHead.h"

@implementation messageDetailHeaderView

-(id)initWithFrame:(CGRect)frame{
   // NSLog(@"%s被调用了",__FUNCTION__);
    self=[super initWithFrame:frame];
    if(self!=nil){
        [self drawTitleView];
    }
    return self;
}

-(void)drawTitleView{
    
   //  self.backgroundColor = [UIColor colorWithRed:95.0/255.0 green:167.0/255.0 blue:241.0/255.0 alpha:1];
    self.backgroundColor =navigationTabColor;
    _backIcon = [UIImage cy_backButtonIcon:[UIColor whiteColor]];
    UIView * customView = [[UIView alloc]initWithFrame:CGRectMake(20, StatusBarHeight, 40, 40)];
    
    UIButton *backBtn = [UIButton buttonBackWithImage:_backIcon buttontitle:NSLocalizedString(@"返回", "") target:self action:@selector(Click:) forControlEvents:UIControlEventTouchUpInside];
    backBtn.tag = 100;
    backBtn.frame = CGRectMake(0, 0, 44, 44);
    [customView addSubview:backBtn];
    [self addSubview:customView];
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0,StatusBarHeight,Width,NavigationBarHeight)];
    title.text = NSLocalizedString(@"正文", "");
    title.textColor = [UIColor whiteColor];
    title.font = [UIFont fontWithName:@"yuanti" size:18];
    title.font = [UIFont boldSystemFontOfSize:18];
    title.textAlignment = NSTextAlignmentCenter;
    [self addSubview:title];
}

-(void) Click:(id)button{
    [_messageDetailHeadAddButtonDelegate ClickAdd:button];
}


@end
