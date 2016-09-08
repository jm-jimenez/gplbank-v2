//
//  GBEmployeeMainMenuVC.m
//  GPLBank
//
//  Created by Jose Maria Jimenez on 19/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import "GBEmployeeMainMenuVC.h"

@interface GBEmployeeMainMenuVC ()

@end

@implementation GBEmployeeMainMenuVC

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

- (IBAction)searchClient:(UIButton *)sender {
    
    [[GBClientsController getInstance] searchClientWithDni:self.dniField.text completion:^(GBInfo *info) {
        if (info.success){
            GBClient *client = [[GBParser getInstance] clientFromJson:info.msg];
            NSLog(@"%@", client);

        }
    }];
    
    
}
@end
