//
//  GBConnectionManager.h
//  GPLBank
//
//  Created by Jose Maria Jimenez on 18/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GBConnectionManager : NSObject

+(GBConnectionManager*) getInstance;


-(NSURL *) returnUrlToRoute: (NSString *) route;
-(NSMutableURLRequest*) buildUrlRequest: (NSString *)route contenJSON:(NSMutableArray *) json;
-(NSDictionary *) callRequest: (NSString *) route andContentArray: (NSMutableArray *) contentArray;
-(void) callRequest: (NSString *) route andContentArray: (NSMutableArray *) contentArray completion:(void (^) (NSDictionary * jsonResponse)) block;

@end
