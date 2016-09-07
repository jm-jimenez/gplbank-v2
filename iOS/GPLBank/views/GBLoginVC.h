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

@property (weak, nonatomic) IBOutlet UITextField *tfDNI;
@property (weak, nonatomic) IBOutlet UITextField *tfPassword;

- (IBAction)authenticateEmployee:(UIButton *)sender;

@end
