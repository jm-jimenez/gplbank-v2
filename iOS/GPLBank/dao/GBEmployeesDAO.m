//
//  GBEmployeesDAO.m
//  GPLBank
//
//  Created by Jose Maria Jimenez on 18/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import "GBEmployeesDAO.h"

@implementation GBEmployeesDAO

-(void)createEmployee: (GBEmployee *) newEmployee completion: (void (^)(GBInfo* info))block{
    NSMutableArray *employeeJson = [[GBParser getInstance] employeeToJson:newEmployee];
    [[GBConnectionManager getInstance] callRequest:@"createEmployee" andContentArray:employeeJson completion:^(NSDictionary *jsonResponse) {
        GBInfo *info = [[GBInfo alloc]init];
        if (jsonResponse != nil){
            NSLog(@"Respuesta--->>> %@", jsonResponse);
            info.success = [[jsonResponse objectForKey:@"success"] boolValue];
            info.msg = [jsonResponse objectForKey:@"msg"];
        }
        block(info);
    }];
}

-(void)authenticateEmployee:(GBEmployee*)employee completion:(void (^)(GBInfo *info)) block{
    NSMutableArray *employeeJson = [[GBParser getInstance] employeeToJson:employee];
    [[GBConnectionManager getInstance] callRequest:@"authenticateEmployee" andContentArray:employeeJson completion:^(NSDictionary *jsonResponse) {
        GBInfo *info = [[GBInfo alloc]init];
        if (jsonResponse != nil){
            NSLog(@"Respuesta--->>> %@", jsonResponse);
            info.success = [[jsonResponse objectForKey:@"success"] boolValue];
            info.msg = [jsonResponse objectForKey:@"msg"];
        }
        block(info);
    }];

}

@end
