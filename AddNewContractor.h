//
//  AddNewContractor.h
//
//  Created by MacBook Pro on 16/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Database.h"
#import "Staff.h"
#import "ManageContractorViewController.h"


@interface AddNewContractor : UIViewController<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *nameTxt;

@property (strong, nonatomic) IBOutlet UITextField *UidTxt;

@property (strong, nonatomic) IBOutlet UITextField *EmailTxt;
//@property (strong, nonatomic) IBOutlet UITextField *AddressTxt;


@property (strong, nonatomic) IBOutlet UITextField *phoneTxt;


- (IBAction)addContractor:(id)sender;

@end
