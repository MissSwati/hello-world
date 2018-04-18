//
//  ViewController.h
//
//  Created by Felix ITs 005 on 15/05/15.
//  Copyright (c) 2015 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ManageStaffViewController.h"
#import "ManageContractorViewController.h"


@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageview;

- (IBAction)ManageStaff:(id)sender;
- (IBAction)ManageContractor:(id)sender;

@end

