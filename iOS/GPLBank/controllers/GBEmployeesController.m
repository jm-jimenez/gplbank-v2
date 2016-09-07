//
//  GBEmployeesController.m
//  GPLBank
//
//  Created by Jose Maria Jimenez on 18/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import "GBEmployeesController.h"

@implementation GBEmployeesController

static GBEmployeesController *instance;

+(GBEmployeesController *) getInstance{
    if (instance == nil){
        instance = [[GBEmployeesController alloc]init];
    }
    
    return instance;
}

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

-(void)getAllEmployees:(void (^)(GBInfo *))block{
    GBEmployeesDAO *dao = [[GBEmployeesDAO alloc] init];
    [dao getAllEmployees:^(GBInfo *info) {
        block(info);
    }];
}

-(void) deleteEmployee:(GBEmployee *)toDelete completion:(void (^)(GBInfo *))block{
    GBEmployeesDAO *dao = [[GBEmployeesDAO alloc] init];
    [dao deleteEmployee:toDelete completion:^(GBInfo *info) {
        block(info);
    }];
}
@end