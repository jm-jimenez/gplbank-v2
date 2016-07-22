//
//  GBBossMainMenuVC.m
//  GPLBank
//
//  Created by Jose Maria Jimenez on 19/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import "GBBossMainMenuVC.h"

@interface GBBossMainMenuVC ()

@end

@implementation GBBossMainMenuVC

static NSString *simpleTableIdentifier = @"SimpleTableItem";

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.employeesController getAllEmployees:^(GBInfo *info) {
        self.employees = [[GBParser getInstance] employeeListFromJson:info.msg];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    GBEmployeeRow *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"GBEmployeeRow" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.dni.text = [(GBEmployee *)[self.employees objectAtIndex:indexPath.row] dni];
    cell.name.text = [(GBEmployee *)[self.employees objectAtIndex:indexPath.row] name];
    cell.surname1.text = [(GBEmployee *)[self.employees objectAtIndex:indexPath.row] surname1];
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  [self.employees count];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
