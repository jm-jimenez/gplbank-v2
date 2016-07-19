//
//  GBEmployeesController.m
//  GPLBank
//
//  Created by Jose Maria Jimenez on 18/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import "GBEmployeesController.h"

@implementation GBEmployeesController

-(GBInfo *) createEmployee: (GBEmployee*) newEmployee{
    GBEmployeesDAO * dao = [[GBEmployeesDAO alloc] init];
    return [dao createEmployee: newEmployee];
}

-(void) createEmployee: (GBEmployee*) newEmployee completion:(void(^) (GBInfo* info))block{
    GBEmployeesDAO * dao = [[GBEmployeesDAO alloc] init];
    [dao createEmployee:newEmployee completion:^(GBInfo *info) {
        block(info);
    }];
}

@end
