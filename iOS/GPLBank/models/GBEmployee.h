//
//  GBEmployee.h
//  GPLBank
//
//  Created by Jose Maria Jimenez on 18/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GBEmployee : NSObject

@property NSString *dni;
@property NSString *name;
@property NSString *surname1;
@property NSString *surname2;
@property NSString *password;
@property BOOL isJefe;

-(id) initWithDni: (NSString *) dni
          andName: (NSString *) name
      andSurname1: (NSString *) surname1
      andSurname2: (NSString *) surname2
      andPassword: (NSString *) password
        andIsJefe: (BOOL) isJefe;

@end
