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

-(GBEmployee *) employeeFromJson:(NSString*) json{
    NSData *data = [json dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *parsedData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    GBEmployee *employee = [[GBEmployee alloc]init];
    
    employee.dni = [parsedData objectForKey:@"dni"];
    employee.name = [parsedData objectForKey:@"name"];
    employee.surname1 = [parsedData objectForKey:@"surname1"];
    employee.surname2 = [parsedData objectForKey:@"surname2"];
    employee.password = [parsedData objectForKey:@"password"];
    employee.isJefe = [[parsedData objectForKey:@"isJefe"] boolValue];
    
    return employee;
}

-(NSMutableArray *) employeeListFromJson: (NSString *) json{
    NSData *data = [json dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *parsedData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    NSMutableArray *employeesList = [[NSMutableArray alloc]init];
    for (NSDictionary *currentEmployee in parsedData) {
        [employeesList addObject: [self employeeFromDictionary:currentEmployee]];
    }
    return employeesList;
}

-(GBEmployee *) employeeFromDictionary: (NSDictionary*) employeeDict{
    GBEmployee *employee = [[GBEmployee alloc]init];
    employee.dni = [employeeDict objectForKey:@"dni"];
    employee.name = [employeeDict objectForKey:@"name"];
    employee.surname1 = [employeeDict objectForKey:@"surname1"];
    employee.surname2 = [employeeDict objectForKey:@"surname2"];
    employee.password = [employeeDict objectForKey:@"password"];
    employee.isJefe = [[employeeDict objectForKey:@"isJefe"] boolValue];
    return employee;
}

-(GBClient *) clientFromJson: (NSString *) json{
    NSData *data = [json dataUsingEncoding: NSUTF8StringEncoding];
    NSDictionary *parsedData = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    GBClient *client = [[GBClient alloc] init];
    
    client.dni = [parsedData objectForKey:@"dni"];
    client.name = [parsedData objectForKey:@"name"];
    client.surname1 = [parsedData objectForKey:@"surname1"];
    client.surname2 = [parsedData objectForKey:@"surname2"];
    
    
    return client;
}

@end
