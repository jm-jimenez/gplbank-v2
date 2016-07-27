//
//  GBBossMainMenuVC.h
//  GPLBank
//
//  Created by Jose Maria Jimenez on 19/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GBEmployeesController.h"
#import "GBEmployeeRow.h"

@interface GBBossMainMenuVC : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property GBEmployeesController *employeesController;
@property NSMutableArray *employees;
@property (weak, nonatomic) IBOutlet UITableView *employeesTable;
- (IBAction)deleteEmployeeActionPerformed:(UIButton *)sender;

@end
