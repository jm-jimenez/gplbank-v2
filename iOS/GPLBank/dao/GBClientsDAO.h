//
//  GBClientsDAO.h
//  GPLBank
//
//  Created by Jose Maria Jimenez on 8/9/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GBInfo.h"
#import "GBConnectionManager.h"

@interface GBClientsDAO : NSObject

-(void) searchClientWithDni: (NSString *) dni
                 completion: (void (^)(GBInfo *info))block;

@end
