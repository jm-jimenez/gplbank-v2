//
//  GBEmployeesController.h
//  GPLBank
//
//  Created by Jose Maria Jimenez on 18/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GBInfo.h"
#import "GBEmployee.h"
#import "GBEmployeesDAO.h"

@interface GBEmployeesController : NSObject

-(void) createEmployee: (GBEmployee*) newEmployee completion:(void(^) (GBInfo *info))block;
-(void)authenticateEmployee:(GBEmployee*)employee completion:(void (^)(GBInfo *info)) block;
-(void) getAllEmployees: (void (^)(GBInfo *info)) block;
@end
