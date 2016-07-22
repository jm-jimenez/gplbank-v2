//
//  GBEmployeeRow.h
//  GPLBank
//
//  Created by Jose Maria Jimenez on 22/7/16.
//  Copyright © 2016 Jose Maria Jimenez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GBEmployeeRow : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *dni;
@property (nonatomic, weak) IBOutlet UILabel *name;
@property (nonatomic, weak) IBOutlet UILabel *surname1;

@end
