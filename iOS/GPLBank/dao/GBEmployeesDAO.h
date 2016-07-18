//
//  GBEmployeesDAO.h
//  GPLBank
//
//  Created by Jose Maria Jimenez on 18/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GBConnectionManager.h"
#import "GBInfo.h"
#import "GBEmployee.h"
#import "GBParser.h"

@interface GBEmployeesDAO : NSObject

-(GBInfo *) createEmployee: (GBEmployee *) newEmployee;

@end
