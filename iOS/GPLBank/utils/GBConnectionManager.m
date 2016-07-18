//
//  GBConnectionManager.m
//  GPLBank
//
//  Created by Jose Maria Jimenez on 18/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import "GBConnectionManager.h"

@implementation GBConnectionManager

static GBConnectionManager *instance = nil;

+(GBConnectionManager*) getInstance{
    if (instance == nil){
        instance = [[GBConnectionManager alloc] init];
    }
    return instance;
}

-(NSURL *) returnUrlToRoute: (NSString *) route{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://localhost:3003/%@", route]];
    return url;
}

-(NSMutableURLRequest*) buildUrlRequest: (NSString *)route contenJSON:(NSMutableArray *) json{
    NSURL *url = [self returnUrlToRoute:route];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
    
    [request setHTTPMethod:@"POST"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    
    if (json != nil){
        NSData *postData = [NSJSONSerialization dataWithJSONObject:json options:0 error:nil];
        [request setHTTPBody:postData];
    }
    
    return request;
}
-(NSDictionary *) callRequest: (NSString *) route andContentArray: (NSMutableArray *) contentArray{
    NSHTTPURLResponse *response;
    NSError *error;
    
    NSData *data = [NSURLConnection sendSynchronousRequest:[self buildUrlRequest:route contenJSON:contentArray] returningResponse:&response error:&error];
    
    NSDictionary *jsonResponse;
    
    if ([response statusCode] != 200){
        jsonResponse = nil;
    }
    else{
        jsonResponse = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    }
    
    return jsonResponse;
}

@end
