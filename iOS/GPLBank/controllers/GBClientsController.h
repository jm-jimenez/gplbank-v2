//
//  GBClientsController.h
//  GPLBank
//
//  Created by Jose Maria Jimenez on 8/9/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GBClientsDAO.h"
#import "GBInfo.h"

@interface GBClientsController : NSObject

+(GBClientsController *) getInstance;

-(void) searchClientWithDni: (NSString *) dni
                 completion: (void (^)(GBInfo *info))block;

@end
