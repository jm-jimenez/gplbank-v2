//
//  GBParser.m
//  GPLBank
//
//  Created by Jose Maria Jimenez on 18/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import "GBParser.h"

@implementation GBParser

static GBParser* instance;

+(GBParser*) getInstance{
    if(instance == nil){
        instance = [[GBParser alloc] init];
    }
    return instance;
}

-(NSMutableArray *) employeeToJson:(GBEmployee *)employee{
    NSDictionary *dict= @{
             @"dni" : employee.dni,
             @"name": employee.name,
             @"surname1" : employee.surname1,
             @"surname2": employee.surname2,
             @"password": employee.password,
             @"isJefe" : @(employee.isJefe)};
    
    NSMutableArray *arrayTemp = [[NSMutableArray alloc]initWithObjects:dict, nil];
    return arrayTemp;
}


@end
