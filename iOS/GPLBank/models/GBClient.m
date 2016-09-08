//
//  GBClient.m
//  GPLBank
//
//  Created by Jose Maria Jimenez on 8/9/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import "GBClient.h"

@implementation GBClient

-(id) init{
    if (self = [super init]){
        self.dni = @"";
        self.name = @"";
        self.surname1 = @"";
        self.surname2 = @"";
        self.password = @"";
    }
    return self;
}

-(id) initWithDni: (NSString *) dni
          andName: (NSString *) name
      andSurname1: (NSString *) surname1
      andSurname2: (NSString *) surname2
      andPassword: (NSString *) password{
    
    if (self = [super init]){
        self.dni = dni;
        self.name = name;
        self.surname1 = surname1;
        self.surname2 = surname2;
        self.password = password;
    }
    
    return self;
}

- (NSString *)description{
    return [NSString stringWithFormat:@"Client: DNI - %@, Name - %@, Surname 1 - %@, Surname 2 - %@, Password - %@", self.dni, self.name, self.surname1, self.surname2, self.password];
}

@end
