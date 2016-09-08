//
//  GBClientsController.m
//  GPLBank
//
//  Created by Jose Maria Jimenez on 8/9/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import "GBClientsController.h"

@implementation GBClientsController

static GBClientsController *instance;

+(GBClientsController *) getInstance{
    if (instance == nil){
        instance = [[GBClientsController alloc] init];
    }
    
    return instance;
}

-(void) searchClientWithDni: (NSString *) dni
                 completion: (void (^)(GBInfo *info))block{
    
    GBClientsDAO *dao = [[GBClientsDAO alloc] init];
    [dao searchClientWithDni:dni completion:^(GBInfo *info) {
        block(info);
    }];
}

@end
