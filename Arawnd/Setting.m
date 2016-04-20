//
//  Setting.m
//  Arawnd
//
//  Created by Nada on 3/22/16.
//  Copyright © 2016 Boopin. All rights reserved.
//

#import "Setting.h"

@interface Setting ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation Setting {
     NSMutableArray *tableArray;


    __weak IBOutlet UITableView *table;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    tableArray = [[NSMutableArray alloc]initWithObjects:@"favorite",@"profile",@"country",@"contactUs",@"leaveFeedback",@"rate",@"privary", @"logout",nil];
    UIImage *backBtn = [UIImage imageNamed:@"back-icon"];
    backBtn = [backBtn imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIBarButtonItem *back = [[UIBarButtonItem alloc]initWithTitle:@"" style:UIBarButtonItemStylePlain target:nil action:nil];
    // [back setImage:backBtn];
    // self.navigationController.navigationItem.leftBarButtonItem.title = @"";
    self.navigationController.navigationItem.title = @"";
    self.navigationController.navigationBar.backIndicatorImage = backBtn;
    self.navigationController.navigationBar.backIndicatorTransitionMaskImage = backBtn;
    self.navigationItem.backBarButtonItem.title=@"";
    
    /* [self.navigationItem.backBarButtonItem setTitle:@"Title here"];*/
    self.navigationItem.backBarButtonItem = back;
    self.navigationController.navigationItem.leftBarButtonItem = back;
}

#pragma mark - UITableView Datasource

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 73.0;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return tableArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cells = tableArray[indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cells];
    
    return cell;
}




@end
