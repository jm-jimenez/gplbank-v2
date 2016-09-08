//
//  GBClientsDAO.m
//  GPLBank
//
//  Created by Jose Maria Jimenez on 8/9/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import "GBClientsDAO.h"

@implementation GBClientsDAO

-(void) searchClientWithDni: (NSString *) dni
                 completion: (void (^)(GBInfo *info))block{
    NSMutableArray *data = [[NSMutableArray alloc] initWithObjects:@{@"dni": dni}, nil];
    [[GBConnectionManager getInstance] callRequest:@"searchClient" andContentArray:data completion:^(NSDictionary *jsonResponse) {
        GBInfo *info = [[GBInfo alloc] init];
        if (jsonResponse != nil){
            info.success = [[jsonResponse objectForKey:@"success"] boolValue];
            info.msg = [jsonResponse objectForKey:@"msg"];
        }
        block(info);
    }];
}

@end
