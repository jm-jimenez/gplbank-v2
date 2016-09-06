//
//  GBNewEmployeeFormVC.m
//  GPLBank
//
//  Created by Jose Maria Jimenez on 6/9/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import "GBNewEmployeeFormVC.h"
#import "GBEmployee.h"

@interface GBNewEmployeeFormVC ()

@end

@implementation GBNewEmployeeFormVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)dni:(UITextField *)sender {
}

- (IBAction)backToBossMenu:(UIButton *)sender {
    
    [self.navigationController popViewControllerAnimated:true];
}

- (IBAction)createEmployeeActionPerformed:(UIButton *)sender {
    GBEmployee *toAdd = [[GBEmployee alloc] init];
    toAdd.dni = self.dni.text;
    toAdd.name = self.name.text;
    toAdd.surname1 = self.surname1.text;
    toAdd.surname2 = self.surname2.text;
    toAdd.isJefe = [self.isJefe isOn];
    
    
}
@end
