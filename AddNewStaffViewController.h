//
//  AddNewStaffViewController.h
//
//  Created by MacBook Pro on 15/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Database.h"
#import "Staff.h"
#import "ManageStaffViewController.h"

@interface AddNewStaffViewController : UIViewController<UITextFieldDelegate,UIAlertViewDelegate>

@property (strong, nonatomic) IBOutlet UITextField *nameTxt;

@property (strong, nonatomic) IBOutlet UITextField *uidTxt;


@property (strong, nonatomic) IBOutlet UITextField *EmailTxt;
@property (strong, nonatomic) IBOutlet UITextField *PhoneTxt;

- (IBAction)AddStaff:(id)sender;


@end
