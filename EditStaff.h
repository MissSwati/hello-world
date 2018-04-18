//
//  EditStaff.h
//
//  Created by MacBook Pro on 15/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Database.h"
#import "Staff.h"
#import "ManageStaffViewController.h"

@interface EditStaff : UIViewController<UIAlertViewDelegate>


@property (weak, nonatomic) IBOutlet UITextField *Uid;
@property (weak, nonatomic) IBOutlet UITextField *EditedName;
@property (weak, nonatomic) IBOutlet UITextField *EditedEmail;

@property (weak, nonatomic) IBOutlet UITextField *EditedPhone;


- (IBAction)updateStaff:(id)sender;

@end
