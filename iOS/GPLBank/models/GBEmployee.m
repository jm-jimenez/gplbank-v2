//
//  GBEmployee.m
//  GPLBank
//
//  Created by Jose Maria Jimenez on 18/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import "GBEmployee.h"

@implementation GBEmployee

-(id) init{
    if (self = [super init]){
        self.dni = @"";
        self.name = @"";
        self.surname1 = @"";
        self.surname2 = @"";
        self.password = @"";
        self.isJefe = false;
    }
    return self;
}

-(id) initWithDni: (NSString *) dni
          andName: (NSString *) name
      andSurname1: (NSString *) surname1
      andSurname2: (NSString *) surname2
      andPassword: (NSString *) password
        andIsJefe: (BOOL) isJefe{
    
    if (self = [super init]){
        self.dni = dni;
        self.name = name;
        self.surname1 = surname1;
        self.surname2 = surname2;
        self.password = password;
        self.isJefe = isJefe;
    }
    
    return self;
}

- (NSString *)description{
    return [NSString stringWithFormat:@"Employee: DNI - %@, Name - %@, Surname 1 - %@, Surname 2 - %@, Password - %@, isJefe - %hhd", self.dni, self.name, self.surname1, self.surname2, self.password, self.isJefe];
}

@end
