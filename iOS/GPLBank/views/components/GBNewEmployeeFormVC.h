//
//  GBNewEmployeeFormVC.h
//  GPLBank
//
//  Created by Jose Maria Jimenez on 6/9/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GBNewEmployeeFormVC : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *dni;
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *surname1;
@property (weak, nonatomic) IBOutlet UITextField *surname2;
@property (weak, nonatomic) IBOutlet UISwitch *isJefe;

- (IBAction)backToBossMenu:(UIButton *)sender;
- (IBAction)createEmployeeActionPerformed:(UIButton *)sender;

@end
