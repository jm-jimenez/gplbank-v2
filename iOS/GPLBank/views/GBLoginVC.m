//
//  GBLoginVC.m
//  GPLBank
//
//  Created by Jose Maria Jimenez on 18/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import "GBLoginVC.h"

@interface GBLoginVC ()

@end

@implementation GBLoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.employeesController = [[GBEmployeesController alloc] init];
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

- (IBAction)addNewEmployee:(UIButton *)sender {
    
    GBEmployee *newEmployee = [[GBEmployee alloc] initWithDni:self.tfDNI.text andName:self.tfName.text andSurname1:self.tfSurname1.text andSurname2:self.tfSurname2.text andPassword:self.tfPassword.text andIsJefe:self.switchJefe.on];

    [self.employeesController createEmployee:newEmployee completion:^(GBInfo *info) {
        if (info.success){
            NSLog(@"OOOLRAAIITT");
        }
        else{
            NSLog(@"fail");
        }
    }];
}

- (IBAction)authenticateEmployee:(UIButton *)sender {
    
    GBEmployee *employee = [[GBEmployee alloc]init];
    employee.dni = self.tfDNI.text;
    employee.password = self.tfPassword.text;
    
    [self.employeesController authenticateEmployee:employee completion:^(GBInfo *info){
        if (info.success){
            NSLog(@"autentificado");
            GBEmployee *currentEmployee = [[GBParser getInstance] employeeFromJson: info.msg];
            if (currentEmployee.isJefe){
                dispatch_async(dispatch_get_main_queue(), ^{
                    
                    GBBossMainMenuVC *bossMenu = [[GBBossMainMenuVC alloc]initWithNibName:@"GBBossMainMenuVC" bundle:nil];
                    bossMenu.employeesController = self.employeesController;
                    [self.navigationController pushViewController:bossMenu animated:false];
                    
                });
            }
        }
        else{
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"ERROR" message:info.msg preferredStyle:UIAlertControllerStyleAlert];
            [alert addAction:[UIAlertAction actionWithTitle:@"Aceptar" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                [alert dismissViewControllerAnimated:true completion:nil];
            }]];
            
            dispatch_async(dispatch_get_main_queue(), ^{
                [self presentViewController:alert animated:true completion:nil];
            });
            
        }
    }];
}

@end
