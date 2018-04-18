//
//  MultiColumnTableViewCell.h
//
//  Created by Felix-its 001 on 17/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ShowStaff.h"
@interface MultiColumnTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *Uid;

@property (strong, nonatomic) IBOutlet UILabel *Name;

@property (strong, nonatomic) IBOutlet UILabel *Email;

@end
