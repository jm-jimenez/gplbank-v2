//
//  GBInfo.m
//  GPLBank
//
//  Created by Jose Maria Jimenez on 18/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import "GBInfo.h"

@implementation GBInfo


-(id) init{
    if (self = [super init]){
        self.success = false;
        self.msg = @"";
    }
    return self;
}

@end
