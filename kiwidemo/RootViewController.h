//
//  RootViewController.h
//  kiwidemo
//
//  Created by sherry on 16/5/4.
//  Copyright © 2016年 sherry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;

@end
