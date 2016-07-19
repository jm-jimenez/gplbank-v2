//
//  GBLoginVC.h
//  GPLBank
//
//  Created by Jose Maria Jimenez on 18/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GBEmployee.h"
#import "GBInfo.h"
#import "GBEmployeesController.h"
#import "GBBossMainMenuVC.h"

@interface GBLoginVC : UIViewController

@property GBEmployeesController * employeesController;

@property (weak, nonatomic) IBOutlet UITextField *tfDNI;
@property (weak, nonatomic) IBOutlet UITextField *tfName;
@property (weak, nonatomic) IBOutlet UITextField *tfSurname1;
@property (weak, nonatomic) IBOutlet UITextField *tfSurname2;
@property (weak, nonatomic) IBOutlet UITextField *tfPassword;
@property (weak, nonatomic) IBOutlet UISwitch *switchJefe;

- (IBAction)addNewEmployee:(UIButton *)sender;
- (IBAction)authenticateEmployee:(UIButton *)sender;

@end
