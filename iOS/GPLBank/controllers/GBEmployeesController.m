//
//  GBEmployeesController.m
//  GPLBank
//
//  Created by Jose Maria Jimenez on 18/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import "GBEmployeesController.h"

@implementation GBEmployeesController

-(void) createEmployee: (GBEmployee*) newEmployee completion:(void(^) (GBInfo* info))block{
    GBEmployeesDAO * dao = [[GBEmployeesDAO alloc] init];
    [dao createEmployee:newEmployee completion:^(GBInfo *info) {
        block(info);
    }];
}

-(void)authenticateEmployee:(GBEmployee*)employee completion:(void (^)(GBInfo *info)) block{
    GBEmployeesDAO * dao = [[GBEmployeesDAO alloc] init];
    [dao authenticateEmployee:employee completion:^(GBInfo *info) {
        block(info);
    }];
}
@end