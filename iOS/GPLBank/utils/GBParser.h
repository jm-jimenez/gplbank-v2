//
//  GBParser.h
//  GPLBank
//
//  Created by Jose Maria Jimenez on 18/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GBEmployee.h"
#import "GBClient.h"

@interface GBParser : NSObject

+(GBParser*) getInstance;

-(NSMutableArray *) employeeToJson:(GBEmployee*) employee;
-(GBEmployee *) employeeFromJson:(NSString*) json;
-(NSMutableArray *) employeeListFromJson: (NSString *) json;

-(GBClient *) clientFromJson: (NSString *)json;

@end
