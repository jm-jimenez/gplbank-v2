//
//  GBEmployeesDAO.m
//  GPLBank
//
//  Created by Jose Maria Jimenez on 18/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import "GBEmployeesDAO.h"

@implementation GBEmployeesDAO

-(GBInfo *) createEmployee: (GBEmployee *) newEmployee{
    GBInfo * info = [[GBInfo alloc]init];
    NSMutableArray *employeeJson = [[GBParser getInstance] employeeToJson:newEmployee];
    NSDictionary *jsonResponse = [[GBConnectionManager getInstance] callRequest:@"createEmployee" andContentArray:employeeJson];
    if (jsonResponse != nil){
        NSLog([NSString stringWithFormat:@"Respuesta--->>> %@", jsonResponse]);
        info.success = [[jsonResponse objectForKey:@"success"] boolValue];
        info.msg = [jsonResponse objectForKey:@"msg"];
    }
    return info;
}

@end
