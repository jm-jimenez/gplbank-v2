//
//  GBEmployeeRow.m
//  GPLBank
//
//  Created by Jose Maria Jimenez on 22/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import "GBEmployeeRow.h"

@implementation GBEmployeeRow

@synthesize dni = _dni;
@synthesize name = _name;
@synthesize surname1 = _surname1;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
