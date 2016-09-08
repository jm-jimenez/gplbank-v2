//
//  GBEmployeeMainMenuVC.h
//  GPLBank
//
//  Created by Jose Maria Jimenez on 19/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GBClientsController.h"
#import "GBClient.h"
#import "GBParser.h"

@interface GBEmployeeMainMenuVC : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *dniField;
- (IBAction)searchClient:(UIButton *)sender;

@end
