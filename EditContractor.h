//
//  EditContractor.h
//
//  Created by MacBook Pro on 16/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Database.h"
#import "Contractor.h"
#import "AddNewContractor.h"
@interface EditContractor : UIViewController<UIAlertViewDelegate,UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *Uid;

@property (strong, nonatomic) IBOutlet UITextField *EditedName;
@property (strong, nonatomic) IBOutlet UITextField *EditedEmail;
@property (strong, nonatomic) IBOutlet UITextField *EditedAddress;


- (IBAction)EditContractor:(id)sender;

@end
